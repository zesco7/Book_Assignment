//
//  BookDetailViewController.swift
//  Book_Assignment
//
//  Created by Mac Pro 15 on 2022/09/02.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    static var identifier = "BookDetailViewController"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveToWebLink(_ sender: UIButton) {
        let sb = UIStoryboard(name: "BookSearching", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: BookWebLinkViewController.identifier) as! BookWebLinkViewController
        let navi = UINavigationController(rootViewController: vc)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
