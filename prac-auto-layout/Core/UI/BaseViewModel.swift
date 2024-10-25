//
//  BaseViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

class BaseViewModel {

    var uiState: ((any UIState) -> Void)?
    var sideEffect: ((any SideEffect) -> Void)?
    
    func handleEvent(_ event: any Event) {
        fatalError("This function must be overridden.")
    }
    
    func publishUIState(_ state: any UIState) {
        uiState?(state)
    }
    
    func publishSideEffect(_ effect: any SideEffect) {
        sideEffect?(effect)
    }
    
}
