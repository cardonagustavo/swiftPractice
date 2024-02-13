//  InitView.swift
//  Constraints
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.

import UIKit



@objc protocol NavigationViewDelegate: AnyObject {
    func navigationViewTabButon(_ navigationView: NavigationView)
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

            
            let keyboardHeight = info.frame.size.height
            let maxYKeyboard = info.frame.maxYs
            let maxYView = viewGroup.frame.maxY
            let displacement = maxYKeyboard - maxYView - keyboardHeight
            
            print("""
                   El teclado aparece
                   Info:
                       - Frame: \(info.frame)
                       - Altura del teclado: \(keyboardHeight)
                       - Posición máxima Y del teclado: \(maxYKeyboard)
                       - Posición máxima Y de la vista: \(maxYView)
                       - Desplazamiento necesario: \(displacement)
               """)
        }
        
    }
    
    func keyboardDisappear(_ info: KeyboardManager.Info) {
        self.textFieldKeyboardDiasplace.constant = 0
        self.layoutIfNeeded()
    }
}
  
 
