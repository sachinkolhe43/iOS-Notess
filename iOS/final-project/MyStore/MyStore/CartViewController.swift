//
//  CartViewController.swift
//  MyStore
//
//  Created by Amit Kulkarni on 18/07/23.
//

import UIKit
import Alamofire

class CartViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var buttonPlaceOrder: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelTotalPrice: UILabel!
    
    var cartItems: [CartItem] = []
    var totalCartPrice: Float = 0
    
    //TODO: remove this hardcoded id
    let userId = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide the button place order
        buttonPlaceOrder.isHidden = true
        
        self.navigationItem.title = "Cart"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(loadCartItems))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadCartItems()
    }
    
    @objc func loadCartItems() {
        let url = createUrl(path: "/cart/\(userId)")
        let request = AF.request(url, method: .get)
        request.response(completionHandler: { response in
            switch response.result {
            case let .success(data):
                let result = try! JSONSerialization.jsonObject(with: data!) as! [String: Any]
                if result["status"] as! String == "success" {
                    
                    // clear the existing list of cartItems
                    self.cartItems.removeAll()
                    
                    // get the total price
                    var totalPrice: Float = 0
                    
                    // get all cart Items
                    let tmpItems = result["data"] as! [[String: Any]]
                    for item in tmpItems {
                        // create an object of Product
                        let cartItem = CartItem()
                        
                        // parse the data and set the values
                        cartItem.id = item["id"] as? Int
                        cartItem.title = item["title"] as? String
                        cartItem.price = item["price"] as? String
                        cartItem.company = item["company"] as? String
                        cartItem.image = item["image"] as? String
                        cartItem.quantity = item["quantity"] as? Int
                        cartItem.productId = item["productId"] as? Int
                        
                        // add the cart item to cart items array
                        self.cartItems.append(cartItem)
                        
                        // add the price
                        let price: Float = Float(cartItem.price!)!
                        
                        totalPrice += price * Float(cartItem.quantity)
                    }
                    
                    // reload data once you get all the products
                    self.tableView.reloadData()
                    
                    // update the price
                    self.labelTotalPrice.text = "Total Price = ₹\(totalPrice)"
                    self.totalCartPrice = totalPrice
                    
                    if self.cartItems.count > 0 {
                        self.buttonPlaceOrder.isHidden = false
                    }
                    
                } else {
                    self.showError(message: "Error while getting list of cart items")
                }
            case let .failure(error):
                print(error)
            }
        })
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count > 0 ? cartItems.count : 1
    }
    
    @objc func updateQuantity(sender: Any) {
        // TODO: call the api to change quantity
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // check if there are any cart items
        if cartItems.count > 0 {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
            
            let cartItem = cartItems[indexPath.row]
            
            let imageView = cell.viewWithTag(100) as! UIImageView
            let labelTitle = cell.viewWithTag(200) as! UILabel
            let labelCompany = cell.viewWithTag(300) as! UILabel
            let labelPrice = cell.viewWithTag(500) as! UILabel
            
            let stepper = cell.viewWithTag(400) as! UIStepper
            stepper.minimumValue = 0
            stepper.maximumValue = 10
            stepper.value = Double(cartItem.quantity!)
            
            stepper.addTarget(self, action: #selector(updateQuantity), for: UIControl.Event.valueChanged)
            
            loadProductImage(imageName: cartItem.image!, imageView: imageView)
            
            labelTitle.text = cartItem.title
            labelPrice.text = "\(cartItem.price!) x \(cartItem.quantity!)"
            labelCompany.text = cartItem.company
            
            cell.accessoryType = .disclosureIndicator
            return cell
        } else {
            
            let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
            
            cell.textLabel?.text = "There is nothing in your cart"
            
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cartItem = cartItems[indexPath.row]
        
        // launch details view controller
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
        
        vc.productId = cartItem.productId
        vc.price = cartItem.price
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func placeOrder() {
        // create url
        let url = createUrl(path: "/order/\(userId)")
        
        // create the body
        let body = [
            "totalPrice": "\(totalCartPrice)"
        ]
        
        // create the request
        let request = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default)
        
        // send the request
        request.response(completionHandler: {response in
            switch response.result {
            case let .success(data):
                let result = try! JSONSerialization.jsonObject(with: data!) as! [String: Any]
                
                if result["status"] as! String == "success"{
                    self.showSuccess(message: "Successfully placed an order")
                    
                    // refresh the cart part
                    self.loadCartItems()
                    
                } else {
                    self.showError(message: "Error while placing an order, please try again..")
                }
            case let .failure(error):
                print(error)
            }
        })
    }
}
