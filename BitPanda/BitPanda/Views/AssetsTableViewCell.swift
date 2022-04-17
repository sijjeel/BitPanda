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
  
  
    // MARK: LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


extension AssetsTableViewCell {
    
    func configureFiats(with fiat: FiatAttributesModel, indexPath: IndexPath) {
        nameLabel.text = fiat.name
        symbolLabel.text = fiat.symbol
        
        assetImage.sd_setImage(with: URL(string: fiat.logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}


extension AssetsTableViewCell {
    
    func configureCoins(with cryptoCoins: CommodityAttributesModel, indexPath: IndexPath) {
        nameLabel.text = cryptoCoins.name
        symbolLabel.text = cryptoCoins.symbol
        priceLabel.text = cryptoCoins.avgPrice.formatCurrencyWithLocale()
        
        assetImage.sd_setImage(with: URL(string: cryptoCoins.logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}


extension AssetsTableViewCell {
    
    func configureWallets(with wallet: CommodityWalletAttributesModel, indexPath: IndexPath) {
        nameLabel.text = wallet.name
        symbolLabel.text = wallet.cryptocoinSymbol
        priceLabel.text = wallet.balance
        
//        assetImage.sd_setImage(with: URL(string: wallet.logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}


extension AssetsTableViewCell {
    
    func configureFiatsWallets(with wallet: FiatWalletAttributesModel, indexPath: IndexPath) {
        nameLabel.text = wallet.name
        symbolLabel.text = wallet.fiatSymbol
        priceLabel.text = wallet.balance
        
//        assetImage.sd_setImage(with: URL(string: wallet.logo), placeholderImage: UIImage.init(named: "notFound"), options: SDWebImageOptions.refreshCached, context: nil)
    }
}
