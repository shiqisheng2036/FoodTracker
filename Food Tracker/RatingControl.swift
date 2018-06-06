//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Shiqi Sheng on 6/5/18.
//  Copyright © 2018 Shiqi Sheng. All rights reserved.
//

import UIKit
import os.log

class RatingControl: UIStackView {

    //MARK: variables
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    //MARK: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder){
        super.init(coder: coder)
        setUpButtons()
    }
    
    //MARK: private funcs
    private func setUpButtons(){
        for _ in 0..<5 {
            // create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonPressed(button:)), for: .touchUpInside)
            
            // adds the button to the view
            addArrangedSubview(button)
            
            ratingButtons.append(button)
        }
    }
    
    //MARK: Button action
    @objc func ratingButtonPressed(button: UIButton){
        print("Rating button pressed")
    }
}
