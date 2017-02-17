//
//  TableCell.swift
//  GithubDemo
//
//  Created by Avinash Singh on 16/02/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var ownerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
