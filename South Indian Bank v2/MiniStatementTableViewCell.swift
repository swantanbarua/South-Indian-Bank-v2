//
//  MiniStatementTableViewCell.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 13/06/23.
//

import UIKit

class MiniStatementTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var dates: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var signs: UILabel!
    @IBOutlet weak var amounts: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
