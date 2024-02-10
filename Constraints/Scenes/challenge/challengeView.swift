//
//  viewChallenge.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 8/02/24.
//

import UIKit

class viewChallenge: UIView {
    
    
    @IBOutlet weak var keyboardText: UITextField!
    
    
    @IBAction private func taptoCloseKeyBoard(_ gesture: UITapGestureRecognizer) {
        self.endEditing(true)
    }
}
