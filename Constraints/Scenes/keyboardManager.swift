//
//  keyboardManager.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/02/24.
//

import UIKit

protocol KeyboardManagerDelegade: AnyObject {
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillShowWith info: KeyboardManager.Info)
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillHideWith info: KeyboardManager.Info)
}

class KeyboardManager {
    
     unowned let delegade: KeyboardManagerDelegade
    
    init(delegade: KeyboardManagerDelegade) {
        self.delegade = delegade
    }
    
    func registerKeyboardNotifications() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWildHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWilShow(_:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
    }
    
    func unregisterKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillHideNotification,
                                                  object: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
    
    }
    
    @objc private func keyboardWilShow(_ notification: Notification) {
        print("Keyboard appear")
        let info = KeyboardManager.Info(userInfo: notification.userInfo)
        self.delegade.keyboardManager(self, keyboardWillShowWith: info)
//        print(notification.userInfo ?? "Sin Info")
//        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
//        let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
//        
//        print("""
//            frame: \(keyboardFrame)
//            duration: \(animationDuration)
//            """)
    }
    
    @objc private func keyboardWildHide(_ notification: Notification) {
        print("Keyboard disappear")
        let info = KeyboardManager.Info(userInfo: notification.userInfo)
        self.delegade.keyboardManager(self, keyboardWillHideWith: info)
//        print(notification.userInfo ?? "Sin Info")
//        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
//        let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
//        
//        print("""
//            frame: \(keyboardFrame)
//            duration: \(animationDuration)
//            """)

    }
}

extension KeyboardManager {
    
    struct Info {
        let frame: CGRect
        let animationDuration: Double
        
        fileprivate init(userInfo: [AnyHashable: Any]?) {
            self.frame = userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
            self.animationDuration = userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        }
    }
}
