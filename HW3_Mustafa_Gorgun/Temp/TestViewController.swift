//
//  TestViewController.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import UIKit

fileprivate extension Selector{
    static let testButtonTapped = #selector(MainViewController.testButtonAction)
}

class TestViewController: UIViewController {
    private lazy var test: UIButton = {
        let temp = UIButton(type: .system)
        temp.addTarget(self, action: .testButtonTapped, for: .touchUpInside)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.setTitle("PUSH", for: .normal)
        //temp.setTitleColor(.black, for: .normal)
        //temp.setTitle("DOWN", for: .disabled)
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(test)
        
        NSLayoutConstraint.activate([
        
            test.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            test.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        
        
        ])
        // Do any additional setup after loading the view.
    }
    @objc func testButtonAction(_ sender: UIButton){
        print("Push Pressed ")
        let viewController = UIViewController()
        //viewController.title = "UIViewController"
        viewController.view.backgroundColor = .yellow
        //Navigation Controller include array component [0,1,2,3,]
        //self.navigationController?.viewControllers -> this component can many viewController
        //self.navigationController?.popToViewController(UIViewController, animated: Bool) -> Thanks to the popviewController function, we can choose the index we want among the indexes.
        //let navigationMainViewController = UINavigationController(rootViewController: viewController)
        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.pushViewController(viewController , animated: true)
        //self.present(navigationMainViewController, animated: true, completion: nil) //-> This different of presentation like a permission page on week2
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
