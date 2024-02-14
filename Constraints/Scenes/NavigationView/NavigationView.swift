//  InitView.swift
//  Constraints
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.

import UIKit



@objc protocol NavigationViewDelegate: AnyObject {
    
}

protocol NavigationViewProtocol {
    func updateNavigationBar()
}

class NavigationView: UIView {
    
    
    @IBOutlet  weak var delegate: NavigationViewDelegate?
    
    
    @IBOutlet private weak var viewGroup: UIView!
    @IBOutlet private weak var textFieldKeyboardDiasplace: NSLayoutConstraint!
    
    @IBAction private func taptoCloseKeyBoard(_ gesture: UITapGestureRecognizer) {
        self.endEditing(true)
    }
    
    //    Si el origen del teclado es menor que el maxY tapa el commponente
    func keyboardAppear(_ info: KeyboardManager.Info) {
        
        if info.frame.origin.y < self.viewGroup.frame.maxY {
            let delta = info.frame.origin.y - self.viewGroup.frame.maxY
            self.textFieldKeyboardDiasplace.constant = delta
            self.layoutIfNeeded()
            print(delta)
        }
        
    }
    
    func keyboardDisappear(_ info: KeyboardManager.Info) {
        self.textFieldKeyboardDiasplace.constant = 0
        self.layoutIfNeeded()
    }
    
    
    private weak var navigationBar: UINavigationBar!
    
    func updateNavigationBar() {
        self.navigationBar?.barTintColor = UIColor(named: "Green")
    }
    
    
}
