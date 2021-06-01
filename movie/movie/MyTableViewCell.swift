//
//  MyTableViewCell.swift
//  movie
//
//  Created by comsoft on 2021/05/19.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var moiveName: UILabel!
    
    @IBOutlet weak var ranking: UILabel!
    @IBOutlet weak var movieDate: UILabel!
    @IBOutlet weak var peopleAcc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
