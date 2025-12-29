//
//  ContentView.swift
//  keep
//
//  Created by Florian Rogosch on 26.12.25.
//

import SwiftUI
public let datatext = "This is a diary entry!"

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView {
                Tab("Home", systemImage: "house") {
                    HomeView()
                }
                Tab("Calendar", systemImage: "calendar") {
                    CalendarView()
                }
                Tab("Settings", systemImage: "gear") {
                    SettingsView()
                }
                
                
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        saveData()
                    } label: {
                        Image(systemName: "plus")
                            .font(.headline) // Macht das Icon etwas dicker und passender für eine Toolbar
                    }
                    .foregroundStyle(.blue) // Färbt das Icon blau
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

