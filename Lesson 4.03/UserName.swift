//
//  UserName.swift
//  Lesson 4.03
//
//  Created by Elizabeth on 27/04/2023.
//

class UserName: Codable {
    var name: String
    
    func logOut() {
        name = ""
    }
}
