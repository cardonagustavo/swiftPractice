//  InitViewController.swift
//  Constraints
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.

import UIKit

class NavigationViewController: UIViewController {
    
    private var navigationView: NavigationView? {self.view as? NavigationView}
    lazy var keyboardManager = KeyboardManager(delegade: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.keyboardManager.registerKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.keyboardManager.unregisterKeyboardNotifications()
    }

    
}
 
extension NavigationViewController: KeyboardManagerDelegade {
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillShowWith info: KeyboardManager.Info) {
//        print("Keyboard appear")
        self.navigationView?.keyboardAppear(info)
    }
    
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillHideWith info: KeyboardManager.Info) {
//        print("Keyboard disappear")
//        print(info)
        self.navigationView?.keyboardDisappear(info)

    }
    
    
}
