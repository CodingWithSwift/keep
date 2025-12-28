//
//  Calendar.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//

import SwiftUI


struct CalendarView: View {
    
    
    @State private var selectedDate: Date = Date()
    var body: some View {
        VStack {
        
            DatePicker(
                "Lookup Entry",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .padding()
            
            
            Button(action: {
                print(selectedDate)
            }) {
                Label( "Add", systemImage: "checkmark.circle")
                    .bold()
                    .labelStyle(.iconOnly)
                    .foregroundStyle(.black)
                    .imageScale(.large)
                    .controlSize(.large)
            }
            
            
            Spacer()
        }

    }
}



#Preview {
    CalendarView()
}
