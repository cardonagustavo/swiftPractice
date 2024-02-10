//
//  HomeViewController.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

class HomeViewController: UIViewController {
    
}

extension HomeViewController: HomeViewDelegate {
    func homeViewButtonNext(_ homeView: HomeView) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard
            let controllerView = storyboard.instantiateViewController(withIdentifier: "HomeSecondViewController") as? HomeSecondViewController
        else {
            return
        }
        controllerView.modalTransitionStyle = .coverVertical
        self.show(controllerView, sender: true)
//        self.present(controllerView, animated: true)
    }
}
