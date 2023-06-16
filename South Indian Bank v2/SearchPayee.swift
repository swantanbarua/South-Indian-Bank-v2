//
//  SearchPayee.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 16/06/23.
//

import UIKit

class SearchPayee: UIViewController {

    @IBOutlet weak var tblfundtranslist: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblfundtranslist.register(UINib(nibName: "FundTransOutwardCell", bundle: nil), forCellReuseIdentifier: "FundTransOutwardCell")
        tblfundtranslist.delegate = self
        tblfundtranslist.dataSource = self
    }
    
    @IBAction func cancelTapped(_ sender: UIButton) {
        dismiss(animated: false)
    }
}

extension SearchPayee: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountNumbers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblfundtranslist.dequeueReusableCell(withIdentifier: "FundTransOutwardCell", for: indexPath) as! FundTransOutwardCell
        cell.accessoryType = .none
        cell.lblacno.text = "\(accountNumbers[indexPath.row])"
        cell.lblacname.text = accountHolderNames[indexPath.row]
        cell.lblbankname.text = bankNames[indexPath.row]
        cell.lblusrname.text = usernames[indexPath.row]
        return cell
    }
}
