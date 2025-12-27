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
            
            CalendarView()
                    .tabItem{
                        Image(systemName: "calendar")
                    }
            SettingsView()
                    .tabItem{
                        Image(systemName: "gear")
                    }
            }
            
        }

    }
}

#Preview {
    ContentView()
}
