//
//  APIResponse.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 03/05/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

protocol APIResponse: Decodable {
    var error: YelpError? { get }
}

struct YelpError: Decodable {
    let code, errorDescription: String

    enum CodingKeys: String, CodingKey {
        case code
        case errorDescription = "description"
    }
}
