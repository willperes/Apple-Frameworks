//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Willian Peres on 22/10/23.
//

import SwiftUI

struct AFButton: View {
    let title: String
    let imageName: String
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Label(title, systemImage: imageName)
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.extraLarge)
        .tint(.red)
    }
}

#Preview {
    AFButton(title: "Learn More", imageName: "book.fill") { return }
}
