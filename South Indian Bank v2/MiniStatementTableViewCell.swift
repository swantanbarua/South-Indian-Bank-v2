//
//  MiniStatementTableViewCell.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 13/06/23.
//

import UIKit

class MiniStatementTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var bankname: UILabel!
    @IBOutlet weak var actnum: UILabel!
    @IBOutlet weak var fullname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
