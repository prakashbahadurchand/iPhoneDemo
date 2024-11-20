//
//  HomeView.swift
//  iPhoneDemo
//
//  Created by Prakash Bahadur Chand on 20/11/2024.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "checklist")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Manage your tasks here.")
                    .font(.title)
            }
            .navigationTitle("Tasks")
        }
    }
}

#Preview {
    TasksView()
            .preferredColorScheme(.dark)
}


#Preview {
    TasksView()
            .preferredColorScheme(.light)
}
