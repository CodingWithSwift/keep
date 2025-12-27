//
//  settings.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//


import SwiftUI



struct SettingsView: View {
    
    @State var statetoggled: Bool = false
    var body: some View {
        NavigationView{
            Form(){
                Section(header: Text("General")){
                    
                    
                    Toggle(isOn: $statetoggled,
                           label: {
                        Text("Test")
                    })
                        
                    }
                
                }
            
            .navigationTitle(Text("settings"))
            
            
            }

        }

    }


#Preview {
    SettingsView()
}
