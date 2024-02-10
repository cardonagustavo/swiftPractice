//
//  InitView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit


@objc protocol NavigationViewDelegate: AnyObject {
    func navigationViewTabButon(_ navigationView: NavigationView)
}

class NavigationView: UIView {
    
    
    @IBOutlet  weak var delegate: NavigationViewDelegate?
    
    @IBAction private func buttonBack(_ sender: UIButton) {
        self.delegate?.navigationViewTabButon(self)
    }
}
  
