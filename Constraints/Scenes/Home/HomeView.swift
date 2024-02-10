//
//  HomeView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

@objc protocol HomeViewDelegate: AnyObject {
    func homeViewButtonNext(_ homeView: HomeView)
}

protocol HomeViewProtocol {
    
}

class HomeView: UIView {
    
    @IBOutlet private weak var delegate: HomeViewDelegate?
    
    @IBAction func homeViewButtonNext(_ sender: UIButton) {
        self.delegate?.homeViewButtonNext(self)
    }
    
}


