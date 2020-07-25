//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Olivia Morgan Chambliss on 7/24/20.
//  Copyright © 2020 Olivia Chambliss. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var FieldSurveyImage: UIImageView!
    @IBOutlet weak var FieldSurveyLabel: UILabel!
    @IBOutlet weak var FieldSurveyDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
