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
            HStack{
                Spacer()
                Text("keep")
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    //The Button Action here
                }) {
                    Label( "Plus", systemImage: "plus")
                        .bold()
                        .labelStyle(.iconOnly)
                        .foregroundStyle(.white)
                        .imageScale(.large)
                        .controlSize(.large)
                }
                .buttonBorderShape(.circle)
                .buttonStyle(.glassProminent)
                .glassEffect(in: Circle())
                .frame (width: 100, height: 100)
                .tint(Color.blue)
                .scaledToFit()
                
            }
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    HomeView()
                        .tabItem{
                            Image(systemName: "house")
                        }
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

