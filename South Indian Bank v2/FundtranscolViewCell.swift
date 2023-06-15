//
//  FundtranscolViewCell.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 14/06/23.
//

import UIKit

class FundtranscolViewCell: UICollectionViewCell {
    
    @IBOutlet weak var btnbalance: UIButton!
    @IBOutlet weak var elockbtn: UIButton!
    @IBOutlet weak var lblacnum_bal: UILabel!
    @IBOutlet weak var lblacnum_balhdr: UILabel!
    
    @IBAction func showbalance(_ sender: Any) {
        btnbalance.isHidden = true
        lblacnum_balhdr.isHidden = false
        lblacnum_bal.isHidden = false
    }
}
