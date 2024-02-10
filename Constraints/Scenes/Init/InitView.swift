//
//  constraintsView.swift
//  Constraints
//
//  Created by Gustavo Adolfo Cardona Quintero on 25/01/24.
//

import UIKit

@objc protocol InitViewDelegate: AnyObject {
    func initViewDidTapListButton(_ initView: InitView)
    func initViewDidTapListButtonCode(_ initView: InitView)

}

protocol InitViewProtocol {
    func setupUI()
}

class InitView: UIView {
    
    @IBOutlet private weak var delegate: InitViewDelegate?
    

    @IBAction func buttonOnDemand(_ sender: UIButton) {
        self.delegate?.initViewDidTapListButton(self)
    }
    
    @IBAction func buttonTapCodeButon(_ sender: UIButton) {
        self.delegate?.initViewDidTapListButtonCode(self)
    }
}
   
    
//    
//    private let buttonRed = UIButton()
//    private let buttonBlue = UIButton()
//    
//    override init(frame: CGRect) {
//        super .init(frame: frame)
//        setupUI()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupUI()
//    }
//}
//
//extension ConstraintView: ConstraintsViewProtocol {
//    internal func setupUI() {
//        buttonRed.setTitle("ButtonRed", for: .normal)
//        buttonRed.backgroundColor = .red
//        buttonRed.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(buttonRed)
//        
//        buttonBlue.setTitle("ButtonBlue", for: .normal)
//        buttonBlue.backgroundColor = .blue
//        buttonBlue.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(buttonBlue)
//        
//        NSLayoutConstraint.activate([buttonBlue.leadingAnchor.constraint(equalTo: buttonRed.trailingAnchor, constant: 10.0)])
//    }
//}
