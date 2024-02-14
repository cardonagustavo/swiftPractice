//
//  SecondSceneView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

@objc protocol NavigationSecondViewDelegate: AnyObject {
    func textFieldShuldReturn(_ textFieldKeyboard: UITextField) -> Bool
}

class NavigationSecondView: UIView {
    @IBOutlet  weak var delegate: NavigationSecondViewDelegate?
    
    @IBAction private func tapToCloseKeyboard(_ gesture: UITapGestureRecognizer) {
        self.endEditing(true)
    }
    
    @IBOutlet private weak var textFieldKeyboard: UITextField!
    @IBOutlet private weak var textFieldKeyboardDisplace: NSLayoutConstraint!
    
    func textFieldShuldReturn(_ textFieldKeyboard: UITextField) -> Bool {
        textFieldKeyboard.resignFirstResponder()
    }
    
    func keyBoardAppear(_ info: KeyboardManager.Info) {
        if info.frame.origin.y < self.textFieldKeyboard.frame.maxY {
            let delta =  info.frame.origin.y - self.textFieldKeyboard.frame.maxY
            self.textFieldKeyboardDisplace.constant = delta
            self.layoutIfNeeded()
            print(delta)
        }
    }
    
    func keyboardDisappear(_ info: KeyboardManager.Info) {
        self.textFieldKeyboardDisplace.constant = 0
        self.layoutIfNeeded()
    }
}
