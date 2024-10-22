//
//  SplashViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import Foundation

enum SplashSideEffect {
    case moveHome
}


final class SplashViewModel {
    
    var sideEffect: ((SplashSideEffect) -> Void)?
    
    init() {
        // 2초 후에 Home으로 이동
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self else { return }
            self.publishSideEffect(.moveHome)
        }
    }
    
    private func publishSideEffect(_ effect: SplashSideEffect) {
        switch effect {
        case .moveHome:
            sideEffect?(effect)
        }
    }
    
}
