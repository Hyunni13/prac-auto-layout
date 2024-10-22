//
//  SplashViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import Foundation

final class SplashViewModel {
    
    var uiState: ((SplashUIState) -> Void)?
    var sideEffect: ((SplashSideEffect) -> Void)?
    
    init() {
        // 2초 후에 Home으로 이동
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self = self else { return }
            
            self.publishSideEffect(.goHome)
        }
    }
    
    func handleEvent(_ event: SplashEvent) {
        switch event {
        case .initUI:
            publishUIState(SplashUIState())
        }
    }
    
    private func publishUIState(_ state: SplashUIState) {
        uiState?(state)
    }
    
    private func publishSideEffect(_ effect: SplashSideEffect) {
        sideEffect?(effect)
    }
    
}
