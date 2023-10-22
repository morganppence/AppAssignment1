//
//  ContentView.swift
//  AppAssignment
//
//  Created by Morgan Pence on 10/22/23.
//

//
//  ContentView.swift
//  myFigmaApp
//
//  Created by Morgan Pence on 10/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = false
    
    var body: some View {
        HStack{
            Label("", systemImage: "line.3.horizontal.decrease.circle")
                .offset(x:-150)
            Label("", systemImage: "person.crop.circle")
                .offset(x:150)
        }
        
        VStack {
            Toggle("Stay Local", isOn: $isToggled)
                .padding()
                .frame(width:170, height:35)
                .offset(x:-30)
            
            if isToggled {
                GoGlobalView()
                
            } else {
                StayLocalView()
            }
        }
        
        
        
        /*TabView {
         //StayLocalView()
         //.tabItem {
         Label("Home", systemImage: "sparkles")
         }
         //GoGlobalView()
         //.tabItem {
         Label("API", systemImage: "sparkles")
         }
         }
         }*/
    }
}

#Preview {
    ContentView()
}
