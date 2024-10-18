//
//  HomeViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

import SwiftUI
import UIKit

final class HomeViewController: UIViewController {
    
    lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        renderUI()
        bindViewModel()
    }
    
    /// UI 그리기
    private func renderUI() {
        // HomeViewController 하위에 SplashView 넣어주기
        let splash = SplashView()
        let splashHost = UIHostingController(rootView: splash)
        addChild(splashHost)
        view.addSubview(splashHost.view)
        didMove(toParent: self)
        
        // SafeArea
        let safeArea = UIView()
        safeArea.layer.borderWidth = 1
        safeArea.layer.borderColor = UIColor.red.cgColor
        splashHost.view.addSubview(safeArea)
        
        // Layout Constraints
        splashHost.view.translatesAutoresizingMaskIntoConstraints = false
        safeArea.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            splashHost.view.topAnchor.constraint(equalTo: view.topAnchor),
            splashHost.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            splashHost.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            splashHost.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            safeArea.topAnchor.constraint(equalTo: splashHost.view.safeAreaLayoutGuide.topAnchor),
            safeArea.bottomAnchor.constraint(equalTo: splashHost.view.safeAreaLayoutGuide.bottomAnchor),
            safeArea.leadingAnchor.constraint(equalTo: splashHost.view.safeAreaLayoutGuide.leadingAnchor),
            safeArea.trailingAnchor.constraint(equalTo: splashHost.view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    /// ViewModel 연동
    private func bindViewModel() {
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
