//
//  Calendar.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//

import SwiftUI


struct CalendarView: View {
    var body: some View {
        VStack {
            Image(systemName: "calendar")
                .font(.largeTitle)
            Text("Calendar")
                .font(.largeTitle)
        }

    }
}

#Preview {
    CalendarView()
}
