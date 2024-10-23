//
//  SplashViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import Foundation

final class SplashViewModel: BaseViewModel {
    
    override func handleEvent(_ event: any Event) {
        guard let event = event as? SplashEvent else { return }
        
        switch event {
        case .goHome:
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                guard let self = self else { return }
                publishSideEffect(SplashSideEffect.goHome)
            }
        }
    }
    
}
