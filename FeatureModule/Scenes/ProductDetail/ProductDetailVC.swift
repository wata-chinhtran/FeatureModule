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
        
//        if let path = Bundle.main.path(forResource: "FeatureModule", ofType: "bundle"), let bundle = Bundle.init(path: path){
//            productImage.image = UIImage(named: "ip13.jpeg",
//                                         in: bundle,
//                                         compatibleWith: nil)
//        }else{
////            let fullPath = "\(featureModuleBundle.resourcePath ?? "")/ip13.jpeg"
//            if #available(iOS 13.0, *) {
//                productImage.image = UIImage(named: "ip13.jpeg", in: featureModuleBundle, with: nil)
//            } else {
//                // Fallback on earlier versions
//            }
//        }
    }
}
