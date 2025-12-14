//
//  LoginBottomSheetViewController.swift
//  Reminder
//
//  Created by Gabriel Guedes on 13/12/25.
//

import UIKit

class LoginBottomSheetViewController: UIViewController {
    private let viewModel = LoginBottomSheetViewModel()
    private let loginBottomSheetView = LoginBottomSheetView()
    
    private var handleAreaHeight: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBottomSheetView.delegate = self
        
        setupUI()
        setupGesture()
    }
    
    private func setupUI() {
        self.view.addSubview(loginBottomSheetView)
        
        loginBottomSheetView.translatesAutoresizingMaskIntoConstraints = false

        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            loginBottomSheetView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            loginBottomSheetView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            loginBottomSheetView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        let heightConstraint: () = loginBottomSheetView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setupGesture() {
        //
    }
    
    private func handlePanGesture() {
       //
    }
    
    func animateShow(completion: (() -> Void)? = nil) {
        self.view.layoutIfNeeded()
        
        loginBottomSheetView.transform = CGAffineTransform(translationX: 0, y: loginBottomSheetView.frame.height)
        
        UIView.animate(withDuration: 0.3, animations: {
            self.loginBottomSheetView.transform = .identity
            self.view.layoutIfNeeded()
        }){ _ in
            completion?()
        }
    }
}

extension LoginBottomSheetViewController: LoginBottomSheetViewDelegate {
    func sendLoginData(user: String, password: String) {
        viewModel.doAuth(usernameLogin: user, password: password)
    }
    
}
