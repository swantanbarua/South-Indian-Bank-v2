//
//  HomeMainCtrl.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 09/06/23.
//

import UIKit

class HomeMainCtrl: UIViewController {
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var imgprofile: UIImageView!
    @IBOutlet weak var btnnotif: UIButton!
    @IBOutlet weak var btnsearch: UIButton!
    @IBOutlet weak var btnlogout: UIButton!
    @IBOutlet weak var lblacnts: UILabel!
    @IBOutlet weak var lblgreetmsg: UILabel!
    @IBOutlet weak var lblname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    @IBAction func calKYC(_ sender: UIButton) {
    }
    
    @IBAction func calllogout(_ sender: UIButton) {
    }
    
    @IBAction func launchfaq(_ sender: UIButton) {
    }
    
    @IBAction func launchpayments(_ sender: UIButton) {
    }
    
    @IBAction func loadCprChequeBookPopup(_ sender: UIButton) {
    }
    
    @IBAction func loadBankholiday(_ sender: UIButton) {
    }
    
    @IBAction func loadCprRequestServicesView(_ sender: UIButton) {
    }
    
    @IBAction func loadDeposit(_ sender: UIButton) {
    }
    
    @IBAction func loadEmical(_ sender: UIButton) {
    }
    
    @IBAction func loadaccount(_ sender: UIButton) {
    }
    
    @IBAction func loadcomplaints(_ sender: UIButton) {
    }
    
    @IBAction func loaddebitcard(_ sender: UIButton) {
    }
    
    @IBAction func loadtranhist(_ sender: UIButton) {
    }
    
    @IBAction func openCreditcard(_ sender: UIButton) {
    }
    
    @IBAction func openOotwardRemit(_ sender: UIButton) {
    }
    
    @IBAction func openUPISDK(_ sender: UIButton) {
    }
    
    @IBAction func opencolfee(_ sender: UIButton) {
    }
    
    @IBAction func openfinanciltool(_ sender: UIButton) {
    }
    
    @IBAction func openloan(_ sender: UIButton) {
    }
    
    @IBAction func openoffering(_ sender: UIButton) {
    }
    
    @IBAction func openonlipymt(_ sender: UIButton) {
    }
}

extension HomeMainCtrl: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        return cell
    }
}
