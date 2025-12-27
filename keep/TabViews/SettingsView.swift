//
//  settings.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//


import SwiftUI



struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    let myCornerRadius: CGFloat = 10
    var body: some View {
        NavigationView{
            Form(){
                Section(header: Text("General")){
                    
                    
                    Toggle(isOn: $statetoggled,
                           label: {
                        Text("Test")
                    })
                        
                    Toggle("Dark Mode", isOn: $isDarkMode)
                                        .toggleStyle(SwitchToggleStyle(tint: .blue)) // Optional: Farbe anpassen
                                        .padding(3)
                                        .cornerRadius(10)
                    
                    }
                
                
                
                }
            
            .navigationTitle(Text("settings"))
            .preferredColorScheme(isDarkMode ? .dark : .light)
            
            }

        }

    }


#Preview {
    SettingsView()
}
