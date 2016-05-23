    
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
        
        // ボタンを用意
        var addBtn: UIBarButtonItem!
        
        var posts:[NSDictionary] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            homeTableView.registerNib(UINib(nibName: "homeCustomCell", bundle: nil), forCellReuseIdentifier: "homeCustomCell")
            
            // タイトルを付けておきましょう
            self.title = "Home"
            
            // addBtnを設置
            addBtn = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClick")
            self.navigationItem.rightBarButtonItem = addBtn
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
            cell.homeDiary.text = posts[indexPath.row]["diary"] as! String
            
            cell.homeImageView.image = UIImage(named:(posts[indexPath.row]["picture"] as! String))
            cell.homeSuppNum.text = posts[indexPath.row]["suppNumber"] as! String
            cell.homeYellNum.text = posts[indexPath.row]["yellNumber"] as! String
            
            
            cell.settingBtn.addTarget(self, action: "tappedSettingBtn", forControlEvents:.TouchUpInside)
            
            cell.homeWhen.text = posts[indexPath.row]["when"] as! String
            cell.homeWhere.text = posts[indexPath.row]["where"] as! String
            cell.homeWho.text = posts[indexPath.row]["who"] as! String
            
            cell.homeUniversity.text = posts[indexPath.row]["university"] as! String
            
            
            return cell
            
           
            
            
        }
        
        func tappedSettingBtn(){
            var settingController = UIAlertController(title: "問題を報告する", message: "どんな問題かお知らせください。", preferredStyle: .ActionSheet)
            settingController.addAction(UIAlertAction(title: "被害者にとって不快な内容です", style: .Default, handler: { action in print("OK!")}))
            
            settingController.addAction(UIAlertAction(title: "アカハラと無関係な内容です", style: .Default, handler: { action in print("OK!")}))
            
            settingController.addAction(UIAlertAction(title: "証拠と無関係な名誉毀損です", style: .Default, handler: { action in print("OK!")}))
            
            settingController.addAction(UIAlertAction(title: "キャンセル", style: .Cancel, handler: { action in
                print("cancel")
            }))
            
            
            presentViewController(settingController, animated: true, completion: nil)
        }
        
        // addBtnをタップしたときのアクション
        func onClick() {
            
            let second = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("AddViewController") as UIViewController
            
            self.navigationController?.pushViewController(second, animated: true)
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
    }
    



