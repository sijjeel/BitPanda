//
//  CommoditiesViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import Foundation
import UIKit

class CommoditiesViewController : UIViewController {
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var viewModel : CommoditiesViewModel = CommoditiesViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


extension CommoditiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.commodities.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FiatIdentifier") as! AssetsTableViewCell
        cell.configureCoins(with: viewModel.commodities[indexPath.row].attributes, indexPath: indexPath)
        return cell
    }
}

extension CommoditiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
