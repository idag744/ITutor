//
//  Data.swift
//  myTutor
//
//  Created by Aida Garfami on 07/12/23.
//

import Foundation
import Observation
@Observable
class SharedData {
    
    var test = ["❤️", "🧡", "💛", "💚", "💙", "💜"]
    var tutors = [
        Tutor(name : "Blue 💙" , surname: "john" , image : "mina", description: "I am specialized in math", tags: ["Analyse1"], review : "★4.2" ,  info : "I am specialised in Mathematics and Chemistry exams. I can help you by my unique style of teaching." ),
        Tutor( name : "Laura🧡", surname: "", image : "carmine", description: "I prepare you for the exam", tags: ["Analyse 2"], review : "★4.2",  info : "I am specialised in Mathematics and Chemistry exams. I can help you by my unique style of teaching."),
        Tutor( name : "David💚", surname: "",  image : "filippo" , description: "I will teach physics", tags: ["Anphormatics", "Mathematics"], review : "★4.2", info : "I am specialised in Mathematics and Chemistry exams. I can help you by my unique style of teaching."),
        Tutor( name : "Sara💜", surname: "" , image : "noimage", description: "no description" , tags: ["Mathematics"], review : "★4.2", info : "I am specialised in Mathematics and Chemistry exams. I can help you by my unique style of teaching.")
    ]
    
    var departments = [
    
        
        Department (departmentName : "Agriculture", tutors: []),
        Department( departmentName : "Architecture", tutors: []),
        Department (departmentName : "Biotechnology", tutors: []),
        Department (departmentName : "Economics", tutors: []),
        Department (departmentName : "Pharmacy", tutors: []),
        Department(departmentName : "Law", tutors: []),
        Department (departmentName  : "Engineering", tutors: []),
        Department (departmentName  : "Medicine and Surgery", tutors: []),
        Department(departmentName  : "Other", tutors: [])

    ]
  
}



var sharedData = SharedData()



    

    

