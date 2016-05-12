//
//  SecondViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/12.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var myProf:[NSDictionary]=[]
    var myPosts:[NSDictionary]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        //myProfにデータをセット　{"name":"","selfImage":"","intro";"","suppImage":"","suppNumber":"","yellImage":"","yellNumber":"","bgImage":""}
        
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
    
    //行数決定
    func 
    
    
    //内容表示
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

