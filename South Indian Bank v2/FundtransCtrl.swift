//
//  FundtransCtrl.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 14/06/23.
//

import UIKit

class FundtransCtrl: UIViewController {

    @IBOutlet weak var btnPayee: UIButton!
    @IBOutlet weak var fundtranscolView: UICollectionView!
    @IBOutlet weak var tblfundtranslist: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fundtranscolView.delegate = self
        fundtranscolView.dataSource = self
        tblfundtranslist.register(UINib(nibName: "FundTransOutwardCell", bundle: nil), forCellReuseIdentifier: "FundTransOutwardCell")
        tblfundtranslist.delegate = self
        tblfundtranslist.dataSource = self
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btnPayee.layer.cornerRadius = 20
        btnPayee.layer.borderWidth = 0.5
        btnPayee.layer.borderColor = .init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
    }
}

extension FundtransCtrl: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fundtranscolView.dequeueReusableCell(withReuseIdentifier: "FundtranscolViewCell", for: indexPath) as! FundtranscolViewCell
        return cell
    }
}

extension FundtransCtrl: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usernames.count
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
