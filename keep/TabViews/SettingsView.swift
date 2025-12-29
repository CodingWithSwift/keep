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
        Text("Settings")
                .font(.system(size: 34, weight: .bold)) // Entspricht Large Title
                .padding(.horizontal)
            Form(){
                Section(header: Text("General")){
                    
                    
                    Toggle(isOn: .constant(false),
                           label: {
                        Text("Test")
                    })
                        
                    Toggle("Dark Mode", isOn: $isDarkMode)
                                        .toggleStyle(SwitchToggleStyle(tint: .blue)) // Optional: Farbe anpassen
                                        .padding(3)
                                        .cornerRadius(10)
                    
                    }
                
                
                
                }
            
            .preferredColorScheme(isDarkMode ? .dark : .light)
            
            }

        }

    


#Preview {
    SettingsView()
}
