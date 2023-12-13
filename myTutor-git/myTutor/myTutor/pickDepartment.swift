//
//  pickDepartment.swift
//  myTutor
//
//  Created by Aida Garfami on 12/12/23.
//

import SwiftUI



struct pickDepartment: View {
    
    var  myData = sharedData
   
    var body: some View {
     
        NavigationStack () {
       
            List {
                ForEach(myData.departments) {
                    department in
                    NavigationLink (destination : tutorListView()) {
                        HStack() {
                            Text(department.departmentName)
                        }
                    }
                    
                } .navigationTitle("Pick your Department")
                   
            }
                
                   
                        
           
              
          
                
            }
        }
        
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  
}

#Preview {
    pickDepartment()
    
}
