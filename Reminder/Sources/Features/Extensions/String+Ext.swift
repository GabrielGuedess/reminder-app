//
//  String+Ext.swift
//  Reminder
//
//  Created by Gabriel Guedes on 13/12/25.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
