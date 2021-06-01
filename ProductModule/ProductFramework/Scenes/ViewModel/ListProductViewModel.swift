//
//  ListProductViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation

public protocol ListProductViewModel {
    func fetchListProduct(completion: @escaping ([ProductModel]) -> Void)
}

public struct ListProductViewModelImpl: ListProductViewModel {

    private var listProductServices:ListProductServices
    public init(productServices: ListProductServices) {
        self.listProductServices = productServices
    }
    public func fetchListProduct(completion: @escaping ([ProductModel]) -> Void) {
        self.listProductServices.fetchListProduct { result in
            completion(result)
        }
    }
}
