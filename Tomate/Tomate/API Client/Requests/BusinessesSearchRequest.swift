//
//  BusinessesSearchRequest.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 03/05/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

struct BusinessesSearchRequest: APIRequest {

    var endpoint: String {
        return "search"
    }
    
    var httpMethod: String {
        return HttpMethods.get.rawValue
    }
    
    var parameters: Dictionary<String, String> {
        return params
    }
    
    private var params = Dictionary<String, String>()
    
    init(type: PlaceType, latitude: Double, longitude: Double, offset: Int) {
        params["term"] = type.rawValue
        params["latitude"] = "\(latitude)"
        params["longitude"] = "\(longitude)"
        params["radius"] = "\(40000)"
        params["offset"] = "\(offset)"
        params["sort_by"] = "distance"
    }
}
