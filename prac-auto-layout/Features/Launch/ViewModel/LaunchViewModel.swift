//
//  LaunchViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import Foundation

final class LaunchViewModel: BaseViewModel {
    
    private var state = LaunchState()
    
    // MARK: REDUCE
    override func reduce(action: any Action) {
        guard let _ = getState() as? LaunchState,
              let action = action as? LaunchAction else { return }
        
        switch action {
        case .goHomeView:
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                guard let self = self else { return }
                self.state = LaunchState(destination: .home)
                self.publish?(self.state)
            }
        }
    }
    
    override func getState() -> any State {
        return state
    }
    
}
