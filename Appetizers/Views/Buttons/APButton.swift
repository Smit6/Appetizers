//
//  APButton.swift
//  Appetizers
//
//  Created by Smitkumar Contractor on 11/11/23.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(3.0)
    }
}

#Preview {
    APButton(title: "Test Title")
}
