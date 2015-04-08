//
//  ViewController.swift
//  IEBViewer
//
//  Created by JaeChulKim on 2015. 4. 7..
//  Copyright (c) 2015년 shou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Get epub
        let ebook_path = NSBundle.mainBundle().pathForResource("aa", ofType: "epub")
    
        var ebook_path_url = NSURL.fileURLWithPath(ebook_path!)
        
        if ((ebook_path_url) != nil) {
            ebook_unzip(ebook_path_url!)
        } else {
            NSLog("Can't Not found ebook_path_url!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ebook_unzip(ebook_path_url : NSURL) {
        NSLog("ebook_unzip method start!");
        
        let archive: ZZArchive = ZZArchive(URL:(fileURLWithPath:ebook_path_url), error: nil)
        for ebook_entry in archive.entries {
            let ebook_entry_info : ZZArchiveEntry = ebook_entry as ZZArchiveEntry
            
             NSLog("Unzip ebook Entry : \(ebook_entry_info.fileName)")
        }
    }
}