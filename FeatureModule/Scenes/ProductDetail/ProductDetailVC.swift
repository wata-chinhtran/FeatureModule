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
    
//        let mainBundlePath = featureModuleBundle.resourcePath
//        if let frameworkBundlePath = mainBundlePath?.appendingPathComponent("FeatureModule.bundle"){
//            if let framworkBundle = Bundle(path: frameworkBundlePath){
//                if let image = getImage(path: framworkBundle.path(forResource: "ip13", ofType: "jpeg")){
//                    productImage.image = image
//                }
//            }
//        }
    }
    
    func getImage(path: String?) -> UIImage? {
        if let imagePath = path, let fileURL = URL(string: imagePath){
            do {
                let imageData = try Data(contentsOf: fileURL)
                return UIImage(data: imageData)
            } catch {
                print("Error loading image : \(error)")
            }
        }
        return nil
    }
}
