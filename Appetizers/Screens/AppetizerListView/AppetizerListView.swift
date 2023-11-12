//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Smitkumar Contractor on 11/8/23.
//

import SwiftUI

struct AppetizerListView: View {
    // Initializing view model, thus state obejct
    @StateObject var viewModel = AppetizerListViewModel()
//    @State private var isShowingDetail = false
//    @State private var selectedAppetizer: Appetizer?

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    AppetizerListView()
}
