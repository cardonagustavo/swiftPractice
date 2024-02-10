//
//  ListViewController.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

class ListViewController: UIViewController {
    
}

extension ListViewController: ListViewDelegate {
    func buttonNextScene(_ listView: ListView) {
        self.performSegue(withIdentifier: "ListSecondViewController", sender: nil)
    }
    
    
}
