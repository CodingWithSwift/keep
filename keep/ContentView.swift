//
//  ContentView.swift
//  keep
//
//  Created by Florian Rogosch on 26.12.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("keep")
                    .bold()
                    
            }
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                Text("Tab Content 1").tabItem { Image(systemName: "house")}.tag(1)
                Text("Tab Content 2").tabItem { Image(systemName: "calendar")}.tag(2)
                Text("Tab Content 3").tabItem { Image(systemName: "gear")}.tag(3)
            }
            
        }

    }
}

#Preview {
    ContentView()
}
