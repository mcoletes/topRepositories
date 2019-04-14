//
//  RootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on April 11, 2019

import Foundation

struct Repositories : Codable {

        let items : [Repository]?

        enum CodingKeys: String, CodingKey {
                case items = "items"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                items = try values.decodeIfPresent([Repository].self, forKey: .items)
        }
}
