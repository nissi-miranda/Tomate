//
//  APISessionProtocol.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 27/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

protocol APISessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: APISessionProtocol { }
