//
//  tutorDataView.swift
//  myTutor
//
//  Created by Aida Garfami on 12/12/23.
//

import SwiftUI

struct tutorDataView: View {
    var myData = sharedData
    @State var SegmentedChoice = 0
    
    var body: some View {
        
        NavigationStack (){
            VStack {
           
                
                  
                Image("carmine")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100,
                           height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Text ("carmine")
                
               
            }
            
            
            VStack {
                
                Picker("" , selection: $SegmentedChoice) {
                    Text("About").tag(0)
                    Text("Reviews").tag(1)
                }
                .padding().pickerStyle(SegmentedPickerStyle())
                
                if (SegmentedChoice == 0 ) {
                    About()
                } else {
                    Reviews()
                }
                
                
            }
            
        }.padding(.bottom, 400)
    }
}

// Page1
struct About : View {
    @State var segmentedChoice = 0
    var body: some View {
        
        
        
        ZStack (alignment: .leading){
            Color.white.edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading)
            {
                 
                VStack{
                    Text("Info")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Text(tutor.info)
                    
                    //      Text ("I am specialised in Mathematics and Chemistry exams. I can help you by my unique style of teaching.")
                    
                }
                    Divider()
             
              
                
            
                
                
                
                
                VStack (alignment: .leading) {
                               
                    Text("Exams")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                      Text(tutor.tags[0])
                                      
                                      HStack{
                                              ForEach (tutor.tags, id: \.self) {
                                                  tag in
                                                  
                                                  ZStack{
                                                      
                                                  Rectangle()
                                                      .fill(Color.blue)
                                                      .frame(width: 120, height: 30
                                                      )
                                                      .cornerRadius(25)
                                                  Text(tag)
                                              }
                                              
                                          }
                                      } //END HSTACK
                                      
                                  } //END VSTACK
              //                    .padding(.bottom, 300)
                                  
                
                
                
                 Divider()
                 Text("Teaching Style")
                 Divider()
                 Text ("Price Range")
                 Divider()
                 
             } .padding()
        }
        
    }
    
}
    
    //Page2
    struct Reviews : View {
        @State var segmentedChoice = 0
        var body: some View {
            ZStack {
                Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    
    
    
    
    #Preview {
        tutorDataView()
    }

