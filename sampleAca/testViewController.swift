//
//  testViewController.swift
//  sampleAca
//
//  Created by RIho OKubo on 2016/05/19.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    @IBOutlet weak var font: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trash = FAKFontAwesome.trashIconWithSize(40)
        // 下記でアイコンの色も変えられます
        // trash.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
        let trashImage = trash.imageWithSize(CGSizeMake(40, 40))
        
        font.image = trashImage

        // Do any additional setup after loading the view.
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
