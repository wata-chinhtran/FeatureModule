//
//  ListProductVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public class ListProductVC: UIViewController {

    public var viewModel:ListProductViewModel!
    public var token: String!
    
    public func setToken(token: String) {
        self.token = token
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    public func fetchListProduct(completion:@escaping ([[String: Any]]) -> Void){
        viewModel.fetchListProduct { listProduct in
            let dict = listProduct.compactMap { item in
                return item.dictionary
            }
            completion(dict)
        }
    }
}
