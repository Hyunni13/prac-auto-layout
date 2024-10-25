//
//  SplashView.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.appBlue
            
            Image(systemName: "wallet.bifold.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.appWhite)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    SplashView()
}
