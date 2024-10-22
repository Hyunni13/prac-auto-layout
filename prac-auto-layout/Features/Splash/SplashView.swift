//
//  SplashView.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI

struct SplashView: View {
    private let defaultText = "This is a SPLASH VIEW(SwiftUI) inside HomeViewController(UIKit)."
    
    var body: some View {
        ZStack {
            Color.blue
            
            Text(defaultText)
                .padding()
                .foregroundColor(.white)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    SplashView()
}
