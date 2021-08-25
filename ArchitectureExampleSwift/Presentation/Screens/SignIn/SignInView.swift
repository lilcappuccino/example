//
//  SignInView.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import UIKit
import SnapKit

class SignInView: AView {
    
    // MARK: Property
    let emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "email"
        return view
    }()
    
    
    let passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "email"
        return view
    }()
    
    let vStack: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.axis = .vertical
        return view
    }()
    
    let actionButton: UIButton = {
       let view = UIButton()
        view.setTitle("Sign in", for: .normal)
        return view
    }()
    
    
    // MARK: Make UI
    override func makeUI() {
        makeActionButtonUI()
        makeStackUI()
    }
    
    private func makeActionButtonUI () {
        self.addSubview(actionButton)
        actionButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(Dimension.sizePadding)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).inset(Dimension.bottomPadding)
        }
    }
    
    private func makeStackUI () {
        self.addSubview(vStack)
        vStack.snp.makeConstraints { make in
            make.leading.trailing.equalTo(actionButton)
            make.bottom.equalTo(actionButton.snp.top)
            make.top.equalToSuperview()
        }
        vStack.addArrangedSubview(emailTextField)
        vStack.addArrangedSubview(passwordTextField)
    }
}
