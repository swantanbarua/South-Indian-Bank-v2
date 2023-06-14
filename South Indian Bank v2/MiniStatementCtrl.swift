//
//  MiniStatementCtrl.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 13/06/23.
//

import UIKit

class MiniStatementCtrl: UIViewController {

    @IBOutlet weak var miniStatementlbl: UILabel!
    @IBOutlet weak var miniStatementTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miniStatementTableView.register(UINib(nibName: "MiniStatementTableViewCell", bundle: nil), forCellReuseIdentifier: "MiniStatementTableViewCell")
        miniStatementTableView.delegate = self
        miniStatementTableView.dataSource = self
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: false)
    }
}

extension MiniStatementCtrl: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return miniStatementDates.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = miniStatementTableView.dequeueReusableCell(withIdentifier: "MiniStatementTableViewCell", for: indexPath) as! MiniStatementTableViewCell
        
        return cell
    }
}
