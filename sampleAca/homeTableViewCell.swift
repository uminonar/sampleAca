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
    
    @IBOutlet weak var homeWhen: UILabel!
    
    @IBOutlet weak var homeWhere: UILabel!
    
    @IBOutlet weak var homeWho: UILabel!
    
    @IBOutlet weak var homeDiary: UITextView!

    @IBOutlet weak var homeMore: UIButton!
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    @IBOutlet weak var homeSuppImg: UIImageView!
    
    @IBOutlet weak var homeSuppNum: UILabel!
    
    @IBOutlet weak var homeYellImg: UIImageView!
    
    @IBOutlet weak var homeYellNum: UILabel!
    
    @IBOutlet weak var settingBtn: UIButton!
    
    override func awakeFromNib() {
  
        super.awakeFromNib()
        // Initialization code
//        let trash = FAKFontAwesome.trashIconWithSize(20)
        // 下記でアイコンの色も変えられます
        // trash.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
//        let trashImage = trash.imageWithSize(CGSizeMake(20, 20))
        
//        homeSuppImg.image = trashImage
//        let homeSuppImg.imageWithSize =
        
        let heart = FAKFontAwesome.heartOIconWithSize(15)
        let heartImage = heart.imageWithSize(CGSizeMake(15, 15))

        homeSuppImg.image = heartImage
        
    
        let commentO = FAKFontAwesome.commentOIconWithSize(15)
        let commentImage = commentO.imageWithSize(CGSizeMake(15, 15))
        homeYellImg.image = commentImage
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func homeName(sender: AnyObject) {
        
    }
    
    @IBAction func homeMore(sender: AnyObject) {
        
    }
    
    

        
        
        
        
        
        
    }
    
    
    
    
    
    

