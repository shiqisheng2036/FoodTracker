//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Shiqi Sheng on 6/5/18.
//  Copyright © 2018 Shiqi Sheng. All rights reserved.
//

import UIKit
import os.log

@IBDesignable class RatingControl: UIStackView {

    //MARK: variables
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    //MARK: properties
    @IBInspectable var starSize: CGSize = CGSize(width: 44, height: 44) {
        didSet {
            setUpButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setUpButtons()
        }
    }
    
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
        // removes existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
            
        }
        ratingButtons.removeAll()
        
        // loads images of buttons
        let bundle = Bundle (for: type(of: self))
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named: "emptyStar", in: bundle, compatibleWith: self.traitCollection)
        let highlightedStar = UIImage(named: "highlightedStar", in: bundle, compatibleWith: self.traitCollection)

        for _ in 0..<starCount {
            // create the button
            let button = UIButton()
            // set button images
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
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
