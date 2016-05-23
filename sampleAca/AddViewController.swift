//
//  AddViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/22.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var add = ["name":"uminonar","selfee":"selfee1.JPG" ]
    
    @IBOutlet weak var addSelfee: UIImageView!
    @IBOutlet weak var addName: UILabel!
    @IBOutlet weak var addPlus: UIImageView!
    @IBOutlet weak var addAudio: UIImageView!
    @IBOutlet weak var addPlusImg: UIImageView!
    @IBOutlet weak var addImg: UIImageView!
    @IBOutlet weak var addPlusMovie: UIImageView!
    @IBOutlet weak var addMovie: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //色が変わらない！！！なぜ？

        let plus = FAKFontAwesome.plusIconWithSize(15)
        let plusImage = plus.imageWithSize(CGSizeMake(15, 15))
        addPlus.image = plusImage
        
        
        let audio = FAKFontAwesome.fileAudioOIconWithSize(25)
        let audioImg = audio.imageWithSize(CGSizeMake(25, 25))
        addAudio.image = audioImg
        
        
        
        let plus2 = FAKFontAwesome.plusIconWithSize(25)
        let plus2Img = plus2.imageWithSize(CGSizeMake(25, 25))
        addPlusImg.image = plus2Img
        

        let addImage = FAKFontAwesome.fileImageOIconWithSize(50)
        let addI = addImage.imageWithSize(CGSizeMake(50, 50))
        addImg.image = addI
        
        
        let plus3 = FAKFontAwesome.plusIconWithSize(25)
        let plus3Img = plus3.imageWithSize(CGSizeMake(25, 25))
        addPlusMovie.image = plus2Img
    
        
        let addMo = FAKFontAwesome.fileMovieOIconWithSize(50)
        let addM = addMo.imageWithSize(CGSizeMake(50, 50))
        addMovie.image = addM

        
    
    }
    
    override func viewWillAppear(animated: Bool) {
     
        addName.text = add["name"]
        addSelfee.image = UIImage(named: "selfee1.JPG")
        
    }
    
    @IBAction func tapRecord(sender: UIButton) {
        
        var recController = UIAlertController(title: "部分修正をかけますか？", message: "後で変更もできます", preferredStyle: .ActionSheet)
        recController.addAction(UIAlertAction(title: "個人名など表示上は隠す", style: .Destructive, handler: { action in print("OK!")}))
        
        recController.addAction(UIAlertAction(title: "このまま公開する", style: .Default, handler: { action in print("OK!")}))
        
        
        recController.addAction(UIAlertAction(title: "キャンセル", style: .Cancel, handler: { action in
            print("cancel")
        }))
        
        
        presentViewController(recController, animated: true, completion: nil)
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
