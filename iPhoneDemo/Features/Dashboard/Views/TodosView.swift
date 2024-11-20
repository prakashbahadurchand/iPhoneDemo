//
//  NetworkView.swift
//  iPhoneDemo
//
//  Created by Prakash Bahadur Chand on 20/11/2024.
//

import SwiftUI

struct NetworkView: View {
    @StateObject private var viewModel = NetworkViewModel()  // Create ViewModel instance

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                } else {
                    List(viewModel.todos) { todo in
                        VStack(alignment: .leading) {
                            Text(todo.title)
                                .font(.headline)
                            Text(todo.completed ? "Completed" : "Not Completed")
                                .font(.subheadline)
                                .foregroundColor(todo.completed ? .green : .red)
                        }
                        .padding()
                    }
                }
            }
            .onAppear {
                viewModel.fetchData()  // Fetch data when the view appears
            }
            .navigationTitle("Todos")
        }
    }
}

#Preview {
    NetworkView()
        .preferredColorScheme(.light)
}

#Preview {
    NetworkView()
        .preferredColorScheme(.dark)
}
