//
//  APIError.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 02/05/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

enum APIError: Error, Equatable {
    case invalidUrl
    case decoding
    case serverError
    case server(message: String)
    case none
}

struct APIErrorParsing {
    static func getParsedError(_ error: APIError) -> String {
        switch error {
            case .invalidUrl:
                return "Error processing request"
            case .decoding:
                return "Error processing request response"
            case .serverError:
                return "Error response from server"
            case .server(let message):
                return message
            default:
                return ""
        }
    }
}
