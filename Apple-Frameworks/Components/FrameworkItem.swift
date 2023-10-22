//
//  FrameworkItem.swift
//  Apple-Frameworks
//
//  Created by Willian Peres on 22/10/23.
//

import Foundation
import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
//                .foregroundStyle(.white)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
