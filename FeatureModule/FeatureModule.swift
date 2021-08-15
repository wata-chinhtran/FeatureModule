//
//  FeatureModule.swift
//  FeatureModule
//
//  Created by Jonny Rice on 8/13/21.
//

import UIKit
import CommonModule
public var featureModuleBundle: Bundle!
public class FeatureModule {
    public class func initWith(settings: [String: Any]?, token: String) -> UIViewController{
        let mainBundlePath = Bundle(for: Self.self).resourcePath
        let frameworkBundlePath = mainBundlePath?.appendingPathComponent("FeatureModule.bundle")
        featureModuleBundle = Bundle(path: frameworkBundlePath!)
        let productVC = ProductDetailVC(nibName: "ProductDetailVC", bundle: featureModuleBundle)
        if let services = settings?["services"] as? ListProductServices{
            productVC.viewModel = ListProductViewModelImpl(token: token, productServices: services)
        }
        let navi = UINavigationController(rootViewController: productVC)
        navi.modalPresentationStyle = .overFullScreen
        return navi
    }
}
