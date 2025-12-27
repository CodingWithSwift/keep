//
//  ContentView.swift
//  keep
//
//  Created by Florian Rogosch on 26.12.25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        ZStack {     
            
            
            VStack {
                HStack{
                    
                    Spacer()
                    Button(action: {
                        //The Button Action here
                    }) {
                        Label( "Add", systemImage: "plus")
                            .bold()
                            .labelStyle(.iconOnly)
                            .foregroundStyle(.white)
                            .imageScale(.large)
                            .controlSize(.large)
                    }
                    .buttonBorderShape(.circle) 
                    .tint(Color.blue)
                    .scaledToFit()
                    .controlSize(.large)
                    
                }
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    HomeView()
                        .tabItem{
                            Image(systemName: "house")
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
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
    }
    

#Preview {
    ContentView()
}

