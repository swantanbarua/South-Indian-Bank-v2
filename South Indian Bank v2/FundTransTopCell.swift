//
//  FundTransTopCell.swift
//  South Indian Bank v2
//
//  Created by VisioApps on 14/06/23.
//

import UIKit

class FundTransTopCell: UITableViewCell {

    @IBOutlet weak var btninstant: UIButton!
    @IBOutlet weak var btnownactrf: UIButton!
    @IBOutlet weak var btnoutwardClick: UIButton!
    @IBOutlet weak var btnlimitenhanceClick: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        btninstant.layer.cornerRadius = 15
        btninstant.layer.borderWidth = 0.3
        btninstant.layer.borderColor = .init(red: 1.0, green: 0, blue: 0, alpha: 1)
        btnownactrf.layer.cornerRadius = 15
        btnownactrf.layer.borderWidth = 0.3
        btnownactrf.layer.borderColor = .init(red: 1.0, green: 0, blue: 0, alpha: 1)
        btnoutwardClick.layer.cornerRadius = 15
        btnoutwardClick.layer.borderWidth = 0.3
        btnoutwardClick.layer.borderColor = .init(red: 1.0, green: 0, blue: 0, alpha: 1)
        btnlimitenhanceClick.layer.cornerRadius = 15
        btnlimitenhanceClick.layer.borderWidth = 0.3
        btnlimitenhanceClick.layer.borderColor = .init(red: 1.0, green: 0, blue: 0, alpha: 1)
    }
    
    @IBAction func ownAccount(_ sender: UIButton) {
        let controller = UIApplication.topViewController()?.storyboard?.instantiateViewController(withIdentifier: "OwnAcntTransfer") as! OwnAcntTransfer
        UIApplication.topViewController()?.navigationController?.present(controller, animated: false)
    }
}
