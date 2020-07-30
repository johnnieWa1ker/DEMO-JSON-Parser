//
//  RemoteUploadModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

public struct RemoteUploadModel {
    var filename: String
    var data: Data
    
    public init(filename: String, data: Data) {
        self.filename = filename
        self.data = data
    }
}
