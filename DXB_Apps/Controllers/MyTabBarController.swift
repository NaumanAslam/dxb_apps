//
//  MyTabBarController.swift
//  DXB_Apps
//
//  Created by Nauman Aslam on 15/06/2023.
//

import UIKit

class MyTabBarController: UITabBarController {
    let viewNewOrder = UIView()


    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          if let items = tabBar.items {
              // Setting the title text color of all tab bar items:
              for item in items {
                  item.setTitleTextAttributes([.foregroundColor: self.defaultSelectedColor()], for: .selected)
                  item.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .normal)
              }
          }
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        addNewOrderButton()
      
     }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        viewNewOrder.frame = CGRect.init(x: self.tabBar.center.x - 35, y: self.tabBar.center.y - 50, width: 70, height: 70)

         // safe place to set the frame of button manually
    }
    
    func initViews(){
        self.tabBar.unselectedItemTintColor = self.standardUnselectedColor()

    }
    
    func addNewOrderButton(){

        let labelTitle = UILabel()
        labelTitle.text = "New Order"
        labelTitle.font = .boldSystemFont(ofSize: 10)
        labelTitle.textColor = .white
        
        
        viewNewOrder.backgroundColor = self.standardUnselectedColor()
        viewNewOrder.layer.cornerRadius = 35
        
        let imageViewNewOrder = UIImageView()
        imageViewNewOrder.image = UIImage(named: "noun_Add Receipt_783557")
        
        viewNewOrder.addSubview(imageViewNewOrder)
        viewNewOrder.addSubview(labelTitle)
        
        imageViewNewOrder.translatesAutoresizingMaskIntoConstraints = false
        imageViewNewOrder.centerXAnchor.constraint(equalTo: viewNewOrder.centerXAnchor).isActive = true
        imageViewNewOrder.centerYAnchor.constraint(equalTo: viewNewOrder.centerYAnchor, constant: -5).isActive = true
 
        
        
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.leadingAnchor.constraint(equalTo: viewNewOrder.leadingAnchor, constant: 10).isActive = true
        labelTitle.trailingAnchor.constraint(equalTo: viewNewOrder.trailingAnchor, constant: 10).isActive = true
        labelTitle.topAnchor.constraint(equalTo: imageViewNewOrder.topAnchor, constant: 10).isActive = true
        labelTitle.bottomAnchor.constraint(equalTo: viewNewOrder.bottomAnchor, constant: 0).isActive = true
 
        self.view.insertSubview(viewNewOrder, aboveSubview: self.tabBar)
    }

}
