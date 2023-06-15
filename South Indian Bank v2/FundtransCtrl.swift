//
//  FundtransCtrl.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 14/06/23.
//

import UIKit

class FundtransCtrl: UIViewController {

    @IBOutlet weak var btnaddpayee: UIButton!
    @IBOutlet weak var fundtranscolView: UICollectionView!
    @IBOutlet weak var btnpayee: UIButton!
    @IBOutlet weak var tblfundtranslist: UITableView!
    @IBOutlet weak var fundTranstopTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fundtranscolView.delegate = self
        fundtranscolView.dataSource = self
        tblfundtranslist.register(UINib(nibName: "FundTransOutwardCell", bundle: nil), forCellReuseIdentifier: "FundTransOutwardCell")
        fundTranstopTableView.register(UINib(nibName: "FundTransTopCell", bundle: nil), forCellReuseIdentifier: "FundTransTopCell")
        tblfundtranslist.delegate = self
        tblfundtranslist.dataSource = self
        fundTranstopTableView.delegate = self
        fundTranstopTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fundtranscolView.reloadData()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btnaddpayee.layer.cornerRadius = 20
        btnaddpayee.layer.borderWidth = 0.5
        btnaddpayee.layer.borderColor = .init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        btnpayee.layer.cornerRadius = 10
        btnpayee.layer.borderWidth = 0.5
        btnpayee.layer.borderColor = .init(gray: 255/255, alpha: 1)
    }
}

extension FundtransCtrl: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fundtranscolView.dequeueReusableCell(withReuseIdentifier: "FundtranscolViewCell", for: indexPath) as! FundtranscolViewCell
        cell.btnbalance.isHidden = false
        cell.lblacnum_balhdr.isHidden = true
        cell.lblacnum_bal.isHidden = true
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "MiniStatementCtrl") as! MiniStatementCtrl
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: false)
    }
}

extension FundtransCtrl: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tblfundtranslist {
            return usernames.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.tblfundtranslist {
            return 80
        } else {
            return 200
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.tblfundtranslist {
            let cell = tblfundtranslist.dequeueReusableCell(withIdentifier: "FundTransOutwardCell", for: indexPath) as! FundTransOutwardCell
            cell.accessoryType = .none
            cell.lblacno.text = "\(accountNumbers[indexPath.row])"
            cell.lblacname.text = accountHolderNames[indexPath.row]
            cell.lblbankname.text = bankNames[indexPath.row]
            cell.lblusrname.text = usernames[indexPath.row]
            return cell
        } else if tableView == self.fundTranstopTableView {
            let cell = fundTranstopTableView.dequeueReusableCell(withIdentifier: "FundTransTopCell", for: indexPath) as! FundTransTopCell
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
