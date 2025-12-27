//
//  HomeView.swift
//  keep
//
//  Created by Florian Rogosch on 27.12.25.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .font(.largeTitle)
            Text("Home")
                .font(.largeTitle)
        }

    }
}

#Preview {
    HomeView()
}
