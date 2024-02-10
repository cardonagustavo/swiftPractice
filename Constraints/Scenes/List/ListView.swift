//
//  ListView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 28/01/24.
//

import UIKit

@objc protocol ListViewDelegate: AnyObject {
    func buttonNextScene(_ listView: ListView)
}


class ListView: UIView {
    @IBOutlet private weak var delegate: ListViewDelegate?
    
    @IBAction func buttonNextScene(_ sender: UIButton) {
        self.delegate?.buttonNextScene(self)
    }
    
}
