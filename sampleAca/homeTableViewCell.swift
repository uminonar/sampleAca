//
//  HomeTableViewCell.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/17.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class homeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var homePortrait: UIImageView!

    @IBOutlet weak var homeName: UIButton!
    
    @IBOutlet weak var homeCreated: UILabel!
    
    @IBOutlet weak var homeTextView: UITextView!
    
    @IBOutlet weak var homeMore: UIButton!
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    @IBOutlet weak var homeSuppImg: UIImageView!
    
    @IBOutlet weak var homeSuppNum: UILabel!
    
    @IBOutlet weak var homeYellImg: UIImageView!
    
    @IBOutlet weak var homeYellNum: UILabel!
    
    
    override func awakeFromNib() {
  
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func homeName(sender: AnyObject) {
        
    }
    
    @IBAction func homeMore(sender: AnyObject) {
        
    }
    
    @IBAction func homeSettingBtn(sender: UIButton) {
        
        var settingController = UIAlertController(title: "問題を報告する", message: "どんな問題かお知らせください。", preferredStyle: .ActionSheet)
        settingController.addAction(UIAlertAction(title: "被害者を攻撃する内容を含んでいます", style: .Default, handler: { action in print("OK!")}))
        
            settingController.addAction(UIAlertAction(title: "不適切な画像を含んでいます", style: .Default, handler: { action in print("OK!")}))
        
            settingController.addAction(UIAlertAction(title: "スパムです", style: .Default, handler: { action in print("OK!")}))
        
            settingController.addAction(UIAlertAction(title: "キャンセル", style: .Cancel, handler: { action in
                print("cancel")
            }))
        
       presentViewController(settingController, animated: true, completion: nil)
        
       // presentViewControllerは使えない？
        
        
        
        
        
        
    }
    
    
    
    
    
    
}
