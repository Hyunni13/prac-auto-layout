//
//  SplashView.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.customBlue
            
            Image(systemName: "car.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(Color.customWhite)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    LaunchView()
}
