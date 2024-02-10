//
//  SecondSceneViewController.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

class NavSecondViewController: UIViewController {
    
}

extension NavSecondViewController: NavSecondViewDelegate {
    func navButtonBack(_ navSecondView: NavSecondView) {
        self.dismiss(animated: true)
    }
}
