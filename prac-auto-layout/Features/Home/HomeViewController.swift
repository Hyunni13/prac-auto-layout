//
//  HomeViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getViewModel().sideEffect = { [weak self] sideEffect in
            guard let self else { return }
            
            self.handleSideEffect(sideEffect)
        }
    }
    
    private func getViewModel() -> HomeViewModel {
        return viewModel
    }
    
    private func handleSideEffect(_ effect: HomeSideEffect) {
        switch effect {
        case .logging:
            Logger.log()
        }
    }
    
}
