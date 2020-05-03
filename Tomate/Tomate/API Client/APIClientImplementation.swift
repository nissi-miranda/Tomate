//
//  APIClientImplementation.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 26/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

class APIClientImplementation: APIClient {
    
    private var session: APISessionProtocol
    
    init(session: APISessionProtocol = URLSession(configuration: .default)) {
        self.session = session
    }
    
    func send<T: APIRequest, Y: APIResponse>( _ request: T, _ requestResponseClass: Y.Type, completion: @escaping ResultCallback<Y>) {
        
        guard let url = getFullUrl(for: request) else {
            completion(.failure(APIError.invalidUrl))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.httpMethod
        urlRequest.setValue("Bearer \(AppDelegate.apiKey)", forHTTPHeaderField: "Authorization")
        
        let task = session.dataTask(with: urlRequest) {
            data, response, error in
            
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(requestResponseClass.self, from: data)
                    if let error = response.error {
                        completion(.failure(APIError.server(message: error.errorDescription)))
                    }
                    else {
                        completion(.success(response))
                    }
                } catch {
                    print("error (try/catch) -> \(error)")
                    completion(.failure(APIError.decoding))
                }
            } else if let error = error {
                print("error (data nil) -> \(error)")
                completion(.failure(APIError.serverError))
            }
        }
        
        task.resume()
    }
    
    private func getFullUrl<T: APIRequest>(for request: T) -> URL? {
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.yelp.com"
        components.path = "/v3/businesses/\(request.endpoint)"
        components.queryItems = getCustomParameters(for: request)
        
        guard let fullUrl = components.url else {
            print("Could not create full url for request")
            return nil
        }
        
        return fullUrl
    }
    
    private func getCustomParameters<T: APIRequest>(for request: T) -> Array<URLQueryItem> {
        var arr = Array<URLQueryItem>()
        for (key, value) in request.parameters {
            arr.append(URLQueryItem(name: key, value: value))
        }
        return arr
    }
}
