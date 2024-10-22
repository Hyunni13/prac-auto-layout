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
        
        renderUI()
        bindViewModel()
    }
    
    /// UI 그리기
    private func renderUI() {
        let sampleView = UIView()
        sampleView.backgroundColor = .yellow
        
        view.addSubview(sampleView)
        
        sampleView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sampleView.topAnchor.constraint(equalTo: view.topAnchor),
            sampleView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sampleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sampleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
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
