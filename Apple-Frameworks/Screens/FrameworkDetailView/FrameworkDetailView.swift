//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Willian Peres on 22/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var isShowingDetail: Bool
    @State private var isShowingSafariView: Bool = false
    var framework: Framework
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetail)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            AFButton(title: "Learn More", imageName: "book.fill") {
                isShowingSafariView = true
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://developer.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(isShowingDetail: .constant(true), framework: MockData.sampleFramework)
}
