//
//  WalletViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation
import UIKit
import SJSegmentedScrollView

class WalletViewController : SJSegmentedViewController {
    // MARK: Properties
    let viewModel = AssetsViewModel()
    var selectedSegment: SJSegmentTab?
    
    override func viewDidLoad() {
        viewModel.getCryptoDataFromFile()
        setupUI()
        
        super.viewDidLoad()
    }

    func setupUI () {
        if let storyboard = self.storyboard {

            let fiatWalletViewController : FiatWalletViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.FIAT_WALLET_STORYBOARD_ID) as! FiatWalletViewController
            fiatWalletViewController.title = "Fiat Wallet"
            fiatWalletViewController.viewModel.fiatWallets = viewModel.responseModel.data?.attributes.fiatwallets ?? [FiatWallet]()

            let walletsViewController : WalletsViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.WALLETS_STORYBOARD_ID) as! WalletsViewController
            walletsViewController.title = "Wallets"
            walletsViewController.viewModel.wallets = viewModel.responseModel.data?.attributes.wallets ?? [Wallet]()
            
            let commodityWalletViewController : CommodityWalletViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.COMMODITY_WALLET_STORYBOARD_ID) as! CommodityWalletViewController
            commodityWalletViewController.title = "Commodities Wallet"
            commodityWalletViewController.viewModel.commodityWallet = viewModel.responseModel.data?.attributes.commodityWallets ?? [Wallet]()

        
            segmentControllers = [fiatWalletViewController,
                                  walletsViewController,
                                  commodityWalletViewController]
            headerViewHeight = 200
            selectedSegmentViewHeight = 5.0
            headerViewOffsetHeight = 31.0
            segmentTitleColor = .gray
            selectedSegmentViewColor = .systemBlue
            segmentShadow = SJShadow.light()
            showsHorizontalScrollIndicator = false
            showsVerticalScrollIndicator = false
            segmentBounces = false
            delegate = self
        }
    }

}

extension WalletViewController: SJSegmentedViewControllerDelegate {

    func didMoveToPage(_ controller: UIViewController, segment: SJSegmentTab?, index: Int) {

        if selectedSegment != nil {
            selectedSegment?.titleColor(.lightGray)
        }

        if segments.count > 0 {

            selectedSegment = segments[index]
            selectedSegment?.titleColor(.systemBlue)
        }
    }
}

