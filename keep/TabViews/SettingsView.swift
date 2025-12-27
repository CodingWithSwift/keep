//
//  settings.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//


import SwiftUI


struct SettingsView: View {
    var body: some View {
        NavigationView{
            Form(){
                Section(header: Text("General")){
                    
                    
                    Toggle(isOn: .constant(false),
                           label: {
                        Text("Test")
                    })
                    
                    
                        
                        
                    }
                
                }
            
                
            }

        }

    }


#Preview {
    SettingsView()
}
