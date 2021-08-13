//
//  ProductDetailVC.swift
//  FeatureModule
//
//  Created by Jonny Rice on 8/13/21.
//

import UIKit

class ProductDetailVC: UIViewController {
    var viewModel: ListProductViewModel!
    @IBOutlet weak var productImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Product Detail"
//        productImage.image = UIImage(named: "ip13.jpeg", in: featureModuleBundle, compatibleWith: nil)
    }
}
