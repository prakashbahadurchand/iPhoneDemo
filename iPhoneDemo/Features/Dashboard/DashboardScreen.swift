//
//  ContentView.swift
//  iPhoneDemo
//
//  Created by Prakash Bahadur Chand on 20/11/2024.
//

import SwiftUI

struct DashboardScreen: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            TasksView()
                .tabItem {
                    Label("Tasks", systemImage: "checklist")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    DashboardScreen()
            .preferredColorScheme(.dark)
}
