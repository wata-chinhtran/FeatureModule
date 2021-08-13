//
//  FeatureModule.swift
//  FeatureModule
//
//  Created by Jonny Rice on 8/13/21.
//

import UIKit
import CommonModule
public class FeatureModule {
    public class func initWith(settings: [String: Any]?, token: String) -> UIViewController{
        let productVC = ProductDetailVC()
        if let services = settings?["services"] as? ListProductServices{
            productVC.viewModel = ListProductViewModelImpl(token: token, productServices: services)
        }
//        productVC.delegate = self
        let navi = UINavigationController(rootViewController: productVC)
        navi.modalPresentationStyle = .overFullScreen
        return navi
    }
}
