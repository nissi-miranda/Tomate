//
//  BusinessesSearchResponse.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 03/05/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

struct BusinessesSearchResponse: APIResponse {
    var error: YelpError?
    
    let total: Int
    let businesses: [Business]
    let region: Region
}

struct Business: Decodable {
    let rating: Double?
    let price: String?
    let phone: String?
    let isClosed: Bool
    let categories: [Category]
    let reviewCount: Int?
    let name: String
    let url: String
    let coordinates: Center
    let imageURL: String
    let location: Location
    let distance: Double
    let transactions: [String]

    enum CodingKeys: String, CodingKey {
        case rating, price, phone
        case isClosed = "is_closed"
        case categories
        case reviewCount = "review_count"
        case name, url, coordinates
        case imageURL = "image_url"
        case location, distance, transactions
    }
}

struct Category: Decodable {
    let alias, title: String
}

struct Center: Decodable {
    let latitude, longitude: Double
}

struct Location: Decodable {
    let address1: String
    let address2: String?
    let address3: String?
    let city: String?
    let zipCode: String?
    let country: String?
    let state: String?

    enum CodingKeys: String, CodingKey {
        case city, country, address2, address3, state, address1
        case zipCode = "zip_code"
    }
}

struct Region: Decodable {
    let center: Center
}
