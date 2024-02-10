//
//  ConstraintsViewController.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 25/01/24.
//

import UIKit

class InitViewController: UIViewController {

}

extension InitViewController: InitViewDelegate {
    func initViewDidTapListButton(_ initView: InitView) {
        self.performSegue(withIdentifier: "ListViewController", sender: nil)
    }
    
  
    func initViewDidTapListButtonCode(_ initView: InitView) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard
            let controller = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
        else {
            return
        }
        
        controller.modalTransitionStyle = .coverVertical
        self.present(controller, animated: true)
    }
    
}
    


