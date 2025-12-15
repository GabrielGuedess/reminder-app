//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Gabriel Guedes on 14/12/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    func doAuth(usernameLogin: String, password: String) {
        Auth.auth().signIn(withEmail: usernameLogin, password: password) { [weak self] authResult, error in
            if let error = error {
                print("Autenticação não foi com sucesso \(error)")
            } else {
                print(authResult)
            }
        }
    }
}
