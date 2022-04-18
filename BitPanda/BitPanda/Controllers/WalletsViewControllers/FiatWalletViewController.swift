//
//  FiatWalletViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import UIKit

class FiatWalletViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var viewModel : FiatWalletViewModel = FiatWalletViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.reArrangeFiatsArray()
    }
}


extension FiatWalletViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fiatWallets.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CELL_IDENTIFIER) as! AssetsTableViewCell
        cell.configureFiatsWallets(with: viewModel.fiatWallets[indexPath.row].attributes, indexPath: indexPath)
        return cell
    }
}

extension FiatWalletViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
