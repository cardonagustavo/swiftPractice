//
//  SecondSceneView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

@objc protocol NavSecondViewDelegate: AnyObject {
    func navButtonBack(_ navSecondView: NavSecondView)
}

class NavSecondView: UIView {
    @IBOutlet  weak var delegate: NavSecondViewDelegate?
    
    @IBAction private func buttonBack(_ sender: UIButton) {
        self.delegate?.navButtonBack(self)
    }
}
