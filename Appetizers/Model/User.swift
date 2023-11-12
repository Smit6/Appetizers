//
//  User.swift
//  Appetizers
//
//  Created by Smitkumar Contractor on 11/11/23.
//

import Foundation

struct User: Codable {
    var firstname = ""
    var lastname = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
