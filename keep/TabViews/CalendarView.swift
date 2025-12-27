//
//  Calendar.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//

import SwiftUI


struct CalendarView: View {
    
    let dateRange: ClosedRange<Date> = {
        let now = Date.now
        return now...Calendar.current.date(byAdding: .day, value: 7, to: now)!
    }()
    
    @State private var selectedDate: Date = Date()
    var body: some View {
        VStack {
            Image(systemName: "calendar")
                .font(.largeTitle)
            Text("Calendar")
                .font(.largeTitle)
            
            DatePicker(
                "Date within Week",
                selection: $selectedDate,
                in: dateRange,
                displayedComponents: [.date]
            )
        }

    }
}

#Preview {
    CalendarView()
}
