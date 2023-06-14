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
    override func viewDidLoad() {
        super.viewDidLoad()
        fundtranscolView.delegate = self
        fundtranscolView.dataSource = self
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
