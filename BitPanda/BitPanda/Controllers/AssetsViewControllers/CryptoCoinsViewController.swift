//
//  CryptoCoinsViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 15/04/2022.
//

import UIKit

class CryptoCoinsViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var viewModel : CryptoCoinViewModel = CryptoCoinViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}




extension CryptoCoinsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.coins.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FiatIdentifier") as! AssetsTableViewCell
        cell.configureCoins(with: viewModel.coins[indexPath.row].attributes, indexPath: indexPath)
        return cell
    }
}

extension CryptoCoinsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
