//
//  HomeView.swift
//  iPhoneDemo
//
//  Created by Prakash Bahadur Chand on 20/11/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "gearshape.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Customize your settings.")
                    .font(.title)
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
            .preferredColorScheme(.dark)
}


#Preview {
    SettingsView()
            .preferredColorScheme(.light)
}
