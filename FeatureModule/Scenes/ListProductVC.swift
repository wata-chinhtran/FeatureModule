//
//  ListProductVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit
public protocol ProductInfoDelegate: AnyObject {
    func productCallBack(title: String)
}

public class ListProductVC: UIViewController {

    public var viewModel:ListProductViewModel!
    public var token: String!
    public weak var delegate:ProductInfoDelegate!
    
    var tbView:UITableView!
    
    public func setToken(token: String) {
        self.token = token
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tbView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        tbView.delegate = self
        tbView.dataSource = self
        tbView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tbView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tbView)
        self.fetchListProduct {
            self.tbView.reloadData()
        }

    }
    public func fetchListProduct(completion:@escaping () -> Void){
        viewModel.fetchListProduct { listProduct in
            completion()
        }
    }
}
extension ListProductVC: UITableViewDelegate, UITableViewDataSource {
 
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.listProduct.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")! as UITableViewCell
        cell.textLabel?.text = self.viewModel.listProduct[indexPath.row].name
        return cell
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = self.delegate {
            delegate.productCallBack(title: self.viewModel.listProduct[indexPath.row].name ?? "")
            self.dismiss(animated: true, completion: nil)
        }
    }
}
