//
//  FiatViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 15/04/2022.
//

import UIKit

class FiatViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var viewModel : FiatViewModel = FiatViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel.filterFiatArray()
        
    }
}


extension FiatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fiats.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FiatIdentifier") as! AssetsTableViewCell
        cell.configureFiats(with: viewModel.fiats[indexPath.row].attributes, indexPath: indexPath)
        return cell
    }
}

extension FiatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
