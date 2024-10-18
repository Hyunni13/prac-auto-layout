//
//  SplashView.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI

struct SplashView: View {
    private let defaultText = "This is a SPLASH VIEW inside HomeViewController, a UIViewController in the UIKit framework."
    
    var body: some View {
        VStack {
            Text(defaultText)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
        }
        .padding()
    }
}


#Preview {
    SplashView()
}
