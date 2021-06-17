//
//  ProductModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

extension Encodable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
      }
}

public struct ProductModel: Codable {
    let name: String?
    let cost: Double?
}
