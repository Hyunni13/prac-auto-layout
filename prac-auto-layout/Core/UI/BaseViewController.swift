//
//  BaseViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        
        getViewModel().uiState = { [weak self] state in
            guard let self = self else { return }
            
            handleState(state)
        }
        
        getViewModel().sideEffect = { [weak self] effect in
            guard let self = self else { return }
            
            handleSideEffect(effect)
        }
    }
    
    func initUI() {
        fatalError("This function must be overridden.")
    }
    
    func handleState(_ state: any UIState) {
        fatalError("This function must be overridden.")
    }
    
    func handleSideEffect(_ effect: any SideEffect) {
        fatalError("This function must be overridden.")
    }
    
    func getViewModel() -> BaseViewModel {
        fatalError("This function must be overridden.")
    }
    
}
