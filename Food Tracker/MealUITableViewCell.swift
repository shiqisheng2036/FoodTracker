//
//  MealUITableViewCell.swift
//  Food Tracker
//
//  Created by Shiqi Sheng on 6/11/18.
//  Copyright © 2018 Shiqi Sheng. All rights reserved.
//

import UIKit

class MealUITableViewCell: UITableViewCell {
    
    @IBOutlet weak var mealRatings: RatingControl!
    @IBOutlet weak var mealPicture: UIImageView!
    @IBOutlet weak var mealLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
