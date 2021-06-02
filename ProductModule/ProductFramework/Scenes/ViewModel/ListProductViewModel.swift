//
//  ListProductViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation

public protocol ListProductViewModel {
    func fetchListProduct(completion: @escaping ([ProductModel]) -> Void)
    var listProduct:[ProductModel] {get set}
}

public class ListProductViewModelImpl: ListProductViewModel {
    
    public var listProduct: [ProductModel] = []
    private var listProductServices:ListProductServices
    let tokenApp:String!
    
    public init(token: String,productServices: ListProductServices) {
        self.listProductServices = productServices
        self.tokenApp = token
    }
    public func fetchListProduct(completion: @escaping ([ProductModel]) -> Void) {
        self.listProductServices.fetchListProduct { result in
            self.listProduct = result
            completion(result)
        }
    }
}
