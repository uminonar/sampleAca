//
//  AddViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/22.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var addView: UIView!
    
    // View動的追加用変数
    var whenDatePicker = UIDatePicker()

    var whenTimePicker = UIDatePicker()
    
    var bView = UIView(frame: CGRectMake(0, 0, 100, 100))
    var aView = UIView(frame: CGRectMake(0, 0, 100, 100))
    let myBoundSize: CGSize = UIScreen.mainScreen().bounds.size
    //var openFlag = false
    
    var add = ["name":"uminonar","selfee":"portrail1.JPG" ]
    
    @IBOutlet weak var addSelfee: UIImageView!
    @IBOutlet weak var addName: UILabel!
    @IBOutlet weak var addPlus: UIImageView!
    @IBOutlet weak var addAudio: UIImageView!
    @IBOutlet weak var addPlusImg: UIImageView!
    @IBOutlet weak var addImg: UIImageView!
    @IBOutlet weak var addPlusMovie: UIImageView!
    @IBOutlet weak var addMovie: UIImageView!
    @IBOutlet weak var openness: UILabel!

    
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
        addSelfee.image = UIImage(named: "portrait1.JPG")
        
        self.bView = UIView(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,myBoundSize.height))
        
        self.bView.backgroundColor = UIColor.lightGrayColor()
        
        self.aView = UIView(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,270))
        
        self.aView.backgroundColor = UIColor.whiteColor()
        
     //        UIColor color = [UIColor .lightGrayColor()]
     //        UIColor aColor = [color colorWithAlphaComponent:0.5];
        
        
        whenDatePicker.maximumDate = NSDate()
        
        whenDatePicker.frame = CGRectMake(0,0,myBoundSize.width-100,270)
//        whenDatePicker.datePickerMode = 
        
        
        
        whenTimePicker.frame = CGRectMake(myBoundSize.width-100,0,100,270)
        
        
        let df = NSDateFormatter()
    
        df.dateFormat = "yyyy年MM月dd日"
        
        
        
        
        self.view.addSubview(aView)
        aView.addSubview(whenDatePicker)
        aView.addSubview(whenTimePicker)
    
        
    }
    
    @IBAction func tapRecord(sender: UIButton) {
        
        var recController = UIAlertController(title: "部分修正をかけますか？", message: "後で変更もできます", preferredStyle: .ActionSheet)
        recController.addAction(UIAlertAction(title: "個人名などを公開表示では隠す", style: .Destructive, handler: { action in print("OK!")}))
        
        recController.addAction(UIAlertAction(title: "このまま公開する", style: .Default, handler: { action in print("OK!")}))
        
        
        recController.addAction(UIAlertAction(title: "キャンセル", style: .Cancel, handler: { action in
            print("cancel")
        }))
        
        
        presentViewController(recController, animated: true, completion: nil)
    }
    

    @IBAction func addWhenField(sender: UITextField) {
        print("addwhen")
        
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            
            
            self.bView.frame = CGRectMake(0,0,self.myBoundSize.width,self.myBoundSize.height)
            
        })

        
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            
           
            self.aView.frame = CGRectMake(0,self.myBoundSize.height-270,self.myBoundSize.width,270)
            
            
            
        
        })
    }
    
    @IBAction func addWhere(sender: UITextField) {
        print("addWhere")
        
    }
    @IBAction func addWho(sender: UITextField) {
        print("addWho")
    
    }
    @IBAction func addUniversity(sender: UITextField) {
        print("addUniversity")
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
