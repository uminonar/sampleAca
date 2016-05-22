//
//  NoticeViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/12.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class NoticeViewController: UIViewController{
    
    // ボタンを用意
    var addBtn: UIBarButtonItem!

    @IBOutlet weak var noticeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        noticeTableView.registerNib(UINib(nibName: "SnowboardCell", bundle: nil), forCellReuseIdentifier: "noticeCell")
        
        // タイトルを付けておきましょう
        self.title = "Notice"
        
        // addBtnを設置
        addBtn = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: "onClick")
        self.navigationItem.rightBarButtonItem = addBtn
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
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


// 1. 生成するセルをカスタムクラスへダウンキャスト
// 既存のCell生成コードの後に as! <Cellのカスタムクラス名> という記述を追加
//let cell = tableView.dequeueReusableCellWithIdentifier("CustomX", forIndexPath: indexPath) as! SnowboardCell

// 2. CustomCellの初期化コードを記述
//cell.exampleLabel.text = self.exampleDataSource[indexPath.row]
//
//return cell