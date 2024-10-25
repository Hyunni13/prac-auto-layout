//
//  AccountView.swift
//  prac-auto-layout
//
//  Created by James on 10/25/24.
//

import UIKit

class AccountView: UIView {
    
    // BalanceLabel
    private lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "300,000,000원"
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.systemPink
        
        self.addSubview(balanceLabel)
        pinBalanceLabel()
    }
    
    private func pinBalanceLabel() {
        NSLayoutConstraint.activate([
            balanceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            balanceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            balanceLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            balanceLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }

}
