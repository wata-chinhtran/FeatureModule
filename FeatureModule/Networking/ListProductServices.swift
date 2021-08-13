//
//  ListProductServices.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation
import CommonModule
public protocol ListProductProtocol {
    func fetchListProduct(completion: @escaping ([ProductModel]) -> Void)
}
public struct ListProductServices: ListProductProtocol {
    public init(){}

    public func fetchListProduct(completion: @escaping ([ProductModel]) -> Void) {
        let mockProduct = [ProductModel(name: "Apple", cost: 1),
                            ProductModel(name: "Samsung", cost: 2.0),
                            ProductModel(name: "XiaoMi", cost: 2.0),
                            ProductModel(name: "Readmi", cost: 2.0)]
        completion(mockProduct)
    }
}
