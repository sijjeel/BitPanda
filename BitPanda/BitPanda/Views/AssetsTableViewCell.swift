//
//  AssetsTableViewCell.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 15/04/2022.
//

import UIKit
import SDWebImageSVGCoder

class AssetsTableViewCell: UITableViewCell {
  
    // MARK: Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var assetImage: UIImageView!
    @IBOutlet weak var defaultButton: UIButton!
  
    var logo : String = ""
  
    // MARK: LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


extension AssetsTableViewCell {
    
    func configureFiats(with fiat: FiatAttributes, indexPath: IndexPath) {
        nameLabel.text = fiat.name
        symbolLabel.text = fiat.symbol
        
        if UIUserInterfaceStyle.dark == .dark {
            logo = fiat.logoDark
        } else {
            logo = fiat.logo
        }
        
        assetImage.sd_setImage(with: URL(string: logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}


extension AssetsTableViewCell {
    
    func configureCoins(with cryptoCoins: CommodityAttributes, indexPath: IndexPath) {
        nameLabel.text = cryptoCoins.name
        symbolLabel.text = cryptoCoins.symbol
        priceLabel.text = cryptoCoins.avgPrice.formatCurrencyWithLocale()
        
        if UIUserInterfaceStyle.dark == .dark {
            logo = cryptoCoins.logoDark
        } else {
            logo = cryptoCoins.logo
        }
        
        assetImage.sd_setImage(with: URL(string: logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}


extension AssetsTableViewCell {
    
    func configureWallets(with wallet: CommodityWalletAttributes, indexPath: IndexPath) {
        nameLabel.text = wallet.name
        symbolLabel.text = wallet.cryptocoinSymbol
        priceLabel.text = wallet.balance
        
        if wallet.isDefault {
            self.defaultButton.isHidden = false
        } else {
            self.defaultButton.isHidden = true
        }
    }
}


extension AssetsTableViewCell {
    
    func configureFiatsWallets(with wallet: FiatWalletAttributes, indexPath: IndexPath) {
        nameLabel.text = wallet.name
        symbolLabel.text = wallet.fiatSymbol
        priceLabel.text = wallet.balance
    }
}
