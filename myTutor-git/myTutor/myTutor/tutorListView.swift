//
//  tutorListView.swift
//  myTutor
//
//  Created by Aida Garfami on 07/12/23.
//

import SwiftUI


struct tutorListView: View {
   // var subject : tutors
    
   // var department : Department
    var myData = sharedData
    var body: some View {
        
        NavigationStack {
                 ScrollView() {
                     
                     ForEach(myData.tutors) {
                         
                         tutor in
                         NavigationLink (destination: tutorDataView ())
                                         {
                             
                             
                             VStack() {
                                 
                                 ZStack() {
                                     
                                     Rectangle()
                                         .fill(.purple)
                                         .frame (width: 350, height: 200)
                                         .opacity(0.2)
                                     
                                     Image (tutor.image)
                                         .resizable()
                                         .aspectRatio(contentMode: .fill)
                                         .frame(width: 100,
                                                height: 100)
                                         .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                         .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                     
                                         .padding(.trailing,200)
                            
                                     VStack () {
                                         Text(tutor.name)
                                             .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                             .bold()
                                             .foregroundStyle(Color.white)
                                             .aspectRatio(contentMode: .fill)
                                             .frame(width: 100,
                                                    height: 100)
                                             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                             .shadow(radius: 2)
                                             .padding(.leading, 100)
                                         
                                         Text (tutor.description)
                                         
                                             .padding(.leading, 100)
                                         
                                         
                                         
                                         
                                     } //END VSTACK }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 } //END ZSTACK
                                 .cornerRadius(15)
                                 .padding(.horizontal)
                                 
                             } //END VSTACK
                             
                             
                         } // endNAVIGATIONLINK
                             
                } // end foreach
                     .navigationTitle("Tutors")
                
                
                
               
            } //END SCROLLVIEW
        } //END NAVIGATIONSTACK
      
    }
    
}
    
        
#Preview {
    tutorListView()
}
      



