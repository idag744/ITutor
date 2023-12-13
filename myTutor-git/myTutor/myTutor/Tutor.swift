//
//  Tutor.swift
//  myTutor
//
//  Created by Aida Garfami on 07/12/23.
//

import Foundation
// Model for Tutor
struct Tutor: Identifiable {
    var id = UUID ()
    var name: String
    var surname : String
    var mail : String = ""
    var password : String = ""
    var isTutor : Bool = false
    var image: String
    var description: String
    var tags: [String]
    var review: String
    var info: String
}

// Model for Department
struct Department : Identifiable {
    var id = UUID ()
    var departmentName: String
    var tutors : [Tutor]
}

