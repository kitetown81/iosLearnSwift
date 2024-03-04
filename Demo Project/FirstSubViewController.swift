//
//  FirstSubViewController.swift
//  Demo Project
//
//  Created by 汤晓琳 on 2024/2/21.
//

import UIKit

class FirstSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor.brown
//        self.title = "Item #1"
//        self.tabBarItem.image = UIImage(named: "桌面")
//        self.tabBarItem.selectedImage = UIImage(named: "桌面")
//        self.view.backgroundColor = UIColor.brown
        self.title = "First Page"
        self.view.backgroundColor = UIColor.brown
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(FirstSubViewController.nextPage))
        let leftBar = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.refresh, target: self, action: #selector(FirstSubViewController.refresh))
        self.navigationItem.leftBarButtonItem = leftBar
        
        let rightBar = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.save, target: self, action: #selector(FirstSubViewController.save))
        self.navigationItem.rightBarButtonItem = rightBar
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 180, height: 30))
        label.text = "Happy Day"
        label.textAlignment = NSTextAlignment.center
        self.navigationItem.titleView = label
    }
    @objc func refresh()
    {
        let alert = UIAlertController(title: "infomation", message: "Refresh my feeling.", preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert,animated: true, completion: nil)
    }
    @objc func save()
    {
        print("Saving")
    }
//    @objc func nextPage()
//    {
//        let viewController = SecondSubViewController()
//        self.navigationController?.pushViewController(viewController, animated: true)
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        self.navigationItem.prompt = "Loading"
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
//        self.navigationController?.navigationBar.tintColor = UIColor.orange
//        //self.navigationController?.setToolbarHidden(false, animated: false)
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
