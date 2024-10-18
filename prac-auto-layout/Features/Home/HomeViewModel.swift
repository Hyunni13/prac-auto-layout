//
//  HomeViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/16/24.
//

final class HomeViewModel {
    
    var sideEffect: ((HomeSideEffect) -> Void)?
    
    func handleEvent(_ event: HomeEvent) {
        switch event {
        case .mock:
            return
        }
    }
    
}
