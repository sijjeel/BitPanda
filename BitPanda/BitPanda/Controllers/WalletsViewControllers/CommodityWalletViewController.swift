//
//  CommodityWalletViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import UIKit

class CommodityWalletViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var viewModel : CommodityWalletViewModel = CommodityWalletViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.filterCommodityWalletArray()
    }
}


extension CommodityWalletViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.commodityWallet.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CELL_IDENTIFIER) as! AssetsTableViewCell
        cell.configureWallets(with: viewModel.commodityWallet[indexPath.row].attributes, indexPath: indexPath)
        return cell
    }
}

extension CommodityWalletViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

