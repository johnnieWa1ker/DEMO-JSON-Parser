//
//  AppConfiguration.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

enum AppConfiguration {
    
    static var databaseContainerName: String {
        let name = "JSON Parsing"
        return name
    }
    
    static var serverUrl: String {
        let url = "https://pryaniky.com/static/json/sample.json"
        if url.isEmpty {
            fatalError("set your server url in AppConfiguration")
        }
        return url
    }
    
    static var serverApi: String {
        let url = AppConfiguration.serverUrl + ""
        return url
    }
}
