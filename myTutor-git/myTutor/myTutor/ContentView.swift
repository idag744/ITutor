//
//  ContentView.swift
//  myTutor
//
//  Created by Aida Garfami on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    var myData = sharedData

    
    var body: some View {
        Text(myData.test[0])
        

        
    }
    

}


#Preview {
    ContentView()
}
