//
//  APIClient.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 27/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

protocol APIClient {
    typealias ResultCallback<Value> = (Result<Value, APIError>) -> Void
    
    func send<T: APIRequest, Y: APIResponse>( _ request: T, _ requestResponseClass: Y.Type, completion: @escaping ResultCallback<Y>)
}
