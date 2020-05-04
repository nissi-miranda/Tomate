//
//  APIRequest.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 27/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

protocol APIRequest: Encodable {
    var endpoint: String { get }
    var httpMethod: String { get }
    var parameters: Dictionary<String, String> { get }
}
