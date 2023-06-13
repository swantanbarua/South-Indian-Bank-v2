//
//  MiniStatementCtrl.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 13/06/23.
//

import UIKit

class MiniStatementCtrl: UIViewController {

    @IBOutlet weak var miniStatementlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        miniStatementlbl.layer.borderWidth = 0.2
        miniStatementlbl.layer.borderColor = .init(gray: 255/255, alpha: 1)
        miniStatementlbl.layer.cornerRadius = 10
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: false)
    }
}
