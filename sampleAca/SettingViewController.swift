//
//  SettingViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/12.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    // ボタンを用意
    var addBtn: UIBarButtonItem!
    
    
    var setteingList = ["アカウント","ヘルプ","使い方","ログアウト","利用規約"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // タイトルを付けておきましょう
        self.title = "Setting"
        
        // addBtnを設置
        addBtn = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClick")
        self.navigationItem.rightBarButtonItem = addBtn
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setteingList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "settingCell")
        
        cell.textLabel?.textColor = UIColor.brownColor()
        cell.accessoryType = .DisclosureIndicator
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("", sender: nil)
        //segueで条件分岐？
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onClick() {
        let second = AddViewController()
        self.navigationController?.pushViewController(second, animated: true)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
