//
//  Owner.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on April 11, 2019

import Foundation

struct Owner : Codable {
    
    let avatarUrl : String?
        let login : String?
    
    
    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case login = "login"
    }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                avatarUrl = try values.decodeIfPresent(String.self, forKey: .avatarUrl)
                login = try values.decodeIfPresent(String.self, forKey: .login)
        }

}
