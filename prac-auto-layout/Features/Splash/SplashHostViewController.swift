//
//  SplashHostViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI
import UIKit

class SplashHostViewController: UIViewController {
    
    lazy var viewModel: SplashViewModel = {
        return SplashViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
        setupViews()
    }
    
    private func bindViewModel() {
        getViewModel().sideEffect = { [weak self] sideEffect in
            guard let self else { return }
            
            self.handleSideEffect(sideEffect)
        }
    }
    
    private func setupViews() {
        let splash = SplashView()
        let splashHost = UIHostingController(rootView: splash)
        addChild(splashHost)
        view.addSubview(splashHost.view)
        didMove(toParent: self)
        
        splashHost.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            splashHost.view.topAnchor.constraint(equalTo: view.topAnchor),
            splashHost.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            splashHost.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            splashHost.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func handleSideEffect(_ effect: SplashSideEffect) {
        switch effect {
        case .moveHome:
            let homeViewController = HomeViewController()
            homeViewController.modalPresentationStyle = .fullScreen
            
            present(homeViewController, animated: true)
        }
    }
    
    private func getViewModel() -> SplashViewModel {
        return viewModel
    }
    
}
