//  SecondSceneViewController.swift
//  Constraints
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.

import UIKit

class NavigationSecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private var navigationSecondView: NavigationSecondView? {self.view as? NavigationSecondView}
    lazy var keyboardManager = KeyboardManager(delegade: self)
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.keyboardManager.registerKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.keyboardManager.unregisterKeyboardNotifications()
    }
}


extension NavigationSecondViewController: KeyboardManagerDelegade {
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillShowWith info: KeyboardManager.Info) {
        self.navigationSecondView?.keyBoardAppear(info)
    }
    
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillHideWith info: KeyboardManager.Info) {
        self.navigationSecondView?.keyboardDisappear(info)
    }
}

extension NavigationSecondViewController: NavigationSecondViewDelegate {
    func textFieldShuldReturn(_ textFieldKeyboard: UITextField) -> Bool {
        return true
    }
}
