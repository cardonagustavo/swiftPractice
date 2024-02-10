//
//  InitViewController.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

class NavigationViewController: UIViewController {
    
}

extension NavigationViewController: NavigationViewDelegate {
    func navigationViewTabButon(_ navigationView: NavigationView) {
        self.dismiss(animated: true)
    }
}
 
