//
//  HomeView.swift
//  iPhoneDemo
//
//  Created by Prakash Bahadur Chand on 20/11/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Welcome to Home!")
                    .font(.title)
            }
            .navigationTitle("Home")
        }
    }
}


#Preview {
    HomeView()
            .preferredColorScheme(.dark)
}


#Preview {
    HomeView()
            .preferredColorScheme(.light)
}
