//
//  LoginBottomSheetDelegate.swift
//  Reminder
//
//  Created by Gabriel Guedes on 14/12/25.
//

import Foundation

protocol LoginBottomSheetViewDelegate: AnyObject {
    func sendLoginData(user: String, password: String)
}
