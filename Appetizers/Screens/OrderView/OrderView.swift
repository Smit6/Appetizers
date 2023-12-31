//
//  OrderView.swift
//  Appetizers
//
//  Created by Smitkumar Contractor on 11/8/23.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order Placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
//                    .standardButtonStyle()
                    .modifier(StandardButtonStyle())
//                    .buttonStyle(.bordered)
//                    .tint(.brandPrimary)
//                    .controlSize(.large)
                    .padding(.bottom, 25)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
}

#Preview {
    OrderView()
}
