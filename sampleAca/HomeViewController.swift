//
//  FirstViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/12.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var homeTableView: UITableView!
    
    var posts:[NSDictionary] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.registerNib(UINib(nibName: "homeCustomCell", bundle: nil), forCellReuseIdentifier: "homeCustomCell")
//        "name";"riho","diary":"aiueo","picture":"sample1.JPG","movie":"","sound":"","portrait":"portrait1.JPG","created":"30分前","suppNumber":"8","yellNumber":"3"}
    }
    
    override func viewWillAppear(animated: Bool) {
        let path = NSBundle.mainBundle().pathForResource("posts", ofType: "txt")
        let jsondata = NSData(contentsOfFile: path!)
        
        let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
        
        for data in jsonArray{
            posts.append(data as! NSDictionary)
        }
        
    }
    
    //行数決定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    //表示内容を決定
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
//        var cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        
        // 1. 生成するセルをカスタムクラスへダウンキャスト
        // 既存のCell生成コードの後に as! <Cellのカスタムクラス名> という記述を追加
        var cell = tableView.dequeueReusableCellWithIdentifier("homeCustomCell", forIndexPath: indexPath) as! homeTableViewCell
        
        // 2. CustomCellの初期化コードを記述
        // cell = posts[indexPath.row]
        
        cell.homePortrait.image = UIImage(named:(posts[indexPath.row]["portrait"] as! String))
        cell.homeName.setTitle(posts[indexPath.row]["name"] as! String, forState: UIControlState.Normal)
        
        cell.homeCreated.text = posts[indexPath.row]["created"] as! String
        cell.homeTextView.text = posts[indexPath.row]["diary"] as! String
     
        cell.homeImageView.image = UIImage(named:(posts[indexPath.row]["picture"] as! String))
        cell.homeSuppNum.text = posts[indexPath.row]["suppNumber"] as! String
        cell.homeYellNum.text = posts[indexPath.row]["yellNumber"] as! String
        
        
        return cell
        
        //fontawesome利用
        //cell.homeSuppImg.image = UIImage(named: )
        //cell.homeYellImg.image = UIImage(named: )
        //
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

