//
//  ViewController.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import UIKit
import SJSegmentedScrollView

class AssetsViewController: SJSegmentedViewController {
    
    let viewModel = AssetsViewModel()
    var selectedSegment: SJSegmentTab?
    
    override func viewDidLoad() {
        viewModel.getCryptoDataFromFile()
        setupUI()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func setupUI () {
        if let storyboard = self.storyboard {

            let fiatViewController : FiatViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.FIAT_STORYBOARD_ID) as! FiatViewController
            fiatViewController.title = "Fiat"
            fiatViewController.viewModel.fiats = viewModel.responseModel.data?.attributes.fiats ?? [Fiat]()

            let cryptocoinsViewController : CryptoCoinsViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.CRYPTOCOIN_STORYBOARD_ID) as! CryptoCoinsViewController
            cryptocoinsViewController.title = "Cryptocoins"
            cryptocoinsViewController.viewModel.coins = viewModel.responseModel.data?.attributes.cryptocoins ?? [Commodity]()
            
            let commoditiesViewController : CommoditiesViewController = storyboard
                .instantiateViewController(withIdentifier: Constants.COMMODITIES_STORYBOARD_ID) as! CommoditiesViewController
            commoditiesViewController.title = "Commodities"
            commoditiesViewController.viewModel.commodities = viewModel.responseModel.data?.attributes.commodities ?? [Commodity]()

        
            segmentControllers = [fiatViewController,
                                  cryptocoinsViewController,
                                  commoditiesViewController]
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

extension AssetsViewController: SJSegmentedViewControllerDelegate {

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
