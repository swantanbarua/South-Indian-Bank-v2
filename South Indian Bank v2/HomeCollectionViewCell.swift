//
//  HomeCollectionViewCell.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 09/06/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblacname: UILabel!
    @IBOutlet weak var lblacno: UILabel!
    @IBOutlet weak var elockbtn: UIButton!
    @IBOutlet weak var lblbalhdr: UILabel!
    @IBOutlet weak var lblbal: UILabel!
    @IBOutlet weak var viewbalbtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewbalbtn.isHidden = false
        lblbalhdr.isHidden = true
        lblbal.isHidden = true
    }
    
    @IBAction func showbalaance(_ sender: UIButton) {
        viewbalbtn.isHidden = true
        lblbalhdr.isHidden = false
        lblbal.isHidden = false
    }
}
