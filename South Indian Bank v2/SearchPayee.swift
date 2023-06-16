//
//  SearchPayee.swift
//  South Indian Bank v2
//
//  Created by Swantan Barua on 16/06/23.
//

import UIKit

class SearchPayee: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tblfundtranslist: UITableView!
    @IBOutlet weak var serachctrlbar: UITextField!
    
    var searchNames: [String] = accountHolderNames
    var filteredNames: [String] = []
    var filteredAccountNumbers: [Int] = accountNumbers
    var filteredBanknames: [String] = bankNames
    var filteredUsernames: [String] = usernames
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblfundtranslist.register(UINib(nibName: "FundTransOutwardCell", bundle: nil), forCellReuseIdentifier: "FundTransOutwardCell")
        tblfundtranslist.delegate = self
        tblfundtranslist.dataSource = self
        serachctrlbar.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        serachctrlbar.becomeFirstResponder()
    }
    
    @IBAction func cancelTapped(_ sender: UIButton) {
        dismiss(animated: false)
    }
    
    @IBAction func searchPayee(_ sender: UITextField) {
        if let searchText = sender.text {
            if searchText.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
                searchNames = accountHolderNames
                filteredUsernames = usernames
                filteredBanknames = bankNames
                filteredAccountNumbers = accountNumbers
            } else {
                searchNames = accountHolderNames
                filteredUsernames = []
                filteredBanknames = []
                filteredAccountNumbers = []
                filteredNames = accountHolderNames.filter({ $0.lowercased().hasPrefix(searchText.lowercased())})
                
                if !filteredNames.isEmpty {
                    searchNames = filteredNames
                    for item in filteredNames {
                        for index in 0..<accountHolderNames.count {
                            if accountHolderNames[index] == item {
                                filteredUsernames.append(usernames[index])
                                filteredBanknames.append(bankNames[index])
                                filteredAccountNumbers.append(accountNumbers[index])
                            }
                        }
                    }
                } else {
                    searchNames = []
                }
            }
            
            print(searchNames)
            print(filteredUsernames)
            print(filteredBanknames)
            print(filteredAccountNumbers)
            tblfundtranslist.reloadData()
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
//    func textFieldDidChangeSelection(_ textField: UITextField) {
//        tblfundtranslist.reloadData()
//    }
}

extension SearchPayee: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchNames.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblfundtranslist.dequeueReusableCell(withIdentifier: "FundTransOutwardCell", for: indexPath) as! FundTransOutwardCell
        cell.selectionStyle = .none
        
        cell.lblacname.text = searchNames[indexPath.row]
        
        cell.lblacno.text = "\(filteredAccountNumbers[indexPath.row])"
        
        cell.lblbankname.text = filteredBanknames[indexPath.row]
        
        cell.lblusrname.text = filteredUsernames[indexPath.row]

        return cell
    }
}
