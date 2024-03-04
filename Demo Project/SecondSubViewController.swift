//
//  SecondSubViewController.swift
//  Demo Project
//
//  Created by 汤晓琳 on 2024/2/21.
//

import UIKit


var pageNum = 0
class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //        self.view.backgroundColor = UIColor.purple
        //        self.title = "Item #2"
        //        self.tabBarItem.image = UIImage(named: "锁屏")
        //        self.view.backgroundColor = UIColor.purple
        //        self.title = "Second Page"
        //        self.view.backgroundColor = UIColor.purple
        //
        //        let screenWidth = UIScreen.main.bounds.width
        //
        //        let btHideNavBar = UIButton(frame: CGRect(x:40, y: 200, width: screenWidth-80, height: 40))
        //        btHideNavBar.setTitle("Hide navigation", for: .normal)
        //        btHideNavBar.backgroundColor = UIColor.orange
        //        btHideNavBar.addTarget(self, action: #selector(hideNavigationBar), for: .touchUpInside)
        //        self.view.addSubview(btHideNavBar)
        //
        //        let btHideToolBar = UIButton(frame: CGRect(x: 40, y: 260, width: screenWidth-80, height: 40))
        //        btHideToolBar.setTitle("Hide tool bar", for: .normal)
        //        btHideToolBar.backgroundColor = UIColor.orange
        //        btHideToolBar.addTarget(self, action: #selector(hideToolBar), for: .touchUpInside)
        //        self.view.addSubview(btHideToolBar)
        pageNum = pageNum + 1
        
        self.title = "page\(pageNum)"
        self.view.backgroundColor = UIColor.purple
        
        let buttonWidth = UIScreen.main.bounds.width - 80
        let push = UIButton(frame: CGRect(x: 40,y: 120, width: buttonWidth, height: 40))
        push.setTitle("Push Page", for: .normal)
        push.backgroundColor = UIColor.orange
        push.addTarget(self, action: #selector(pushPage), for: UIControl.Event.touchUpInside)
        self.view.addSubview(push)
        
        let pop = UIButton(frame: CGRect(x: 40,y: 180, width: buttonWidth, height: 40))
        pop.setTitle("Pop Page", for: .normal)
        pop.backgroundColor = UIColor.orange
        pop.addTarget(self, action: #selector(popPage), for: UIControl.Event.touchUpInside)
        self.view.addSubview(pop)
        
        let index = UIButton(frame: CGRect(x: 40,y: 280, width: buttonWidth, height: 40))
        index.setTitle("Goto Index Page", for: .normal)
        index.backgroundColor = UIColor.orange
        index.addTarget(self, action: #selector(gotoIndexPage), for: UIControl.Event.touchUpInside)
        self.view.addSubview(index)
        
        let root = UIButton(frame: CGRect(x: 40,y: 380, width: buttonWidth, height: 40))
        root.setTitle("Goto Root Page", for: .normal)
        root.backgroundColor = UIColor.orange
        root.addTarget(self, action: #selector(gotoRootPage), for: UIControl.Event.touchUpInside)
        self.view.addSubview(root)
        
    }
    @objc func pushPage()
    {
        let viewController = SecondSubViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @objc func popPage()
    {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func gotoIndexPage()
    {
        let viewController = self.navigationController?.viewControllers[2]
        self.navigationController?.popToViewController(viewController!, animated: true)
    }
    @objc func gotoRootPage()
    {
        self.navigationController?.popToRootViewController(animated: true)
    }
//
//    @objc func hideNavigationBar()
//    {
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
//    }
//    @objc func hideToolBar()
//    {
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
