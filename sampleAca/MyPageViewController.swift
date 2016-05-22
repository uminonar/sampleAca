//
//  SecondViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/12.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var myPageTableView: UITableView!
    
    // ボタンを用意
    var addBtn: UIBarButtonItem!
    
    var myProf:[NSDictionary]=[]
    var myPosts:[NSDictionary]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPageTableView.registerNib(UINib(nibName: "myPageCustomCell", bundle: nil), forCellReuseIdentifier: "myPageCustomCell")
        
        // タイトルを付けておきましょう
        self.title = "MyPage"
        
        // addBtnを設置
        addBtn = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClick")
        self.navigationItem.rightBarButtonItem = addBtn
    }
    
    override func viewWillAppear(animated: Bool) {
        //myProfにデータをセット　{"name":"","selfee":"","intro";"","suppImg":"","suppNumber":"","yellImg":"","yellNumber":"","bgImg":""}
        
        let path = NSBundle.mainBundle().pathForResource("myProf", ofType: "txt")
        let jsondata = NSData(contentsOfFile: path!)
        
        let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
        
        
        for prof in jsonArray{
            myProf.append(prof as! NSDictionary)
        
            //myPostsにデータをセット {"name":"","portrait":"","suppImage":"","suppNumber":"","yellImage":"","yellNumber":"","created":"","diary":"","picture":"","movie":"","sound":"","open":"","support";"","yell":""}
            
            let path = NSBundle.mainBundle().pathForResource("myPosts", ofType: "txt")
            let jsondata = NSData(contentsOfFile: path!)
        
            let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
            
            for data in jsonArray{
                myPosts.append(data as! NSDictionary)
            
            }
        }
    }
    
    //行数決定
    
    
  
        
    
    
    //内容表示
    
    
    func onClick() {
        let second = AddViewController()
        self.navigationController?.pushViewController(second, animated: true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

