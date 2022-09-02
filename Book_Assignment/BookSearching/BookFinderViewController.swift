//
//  BookFinderViewController.swift
//  Book_Assignment
//
//  Created by Mac Pro 15 on 2022/09/02.
//

import UIKit

class BookFinderViewController: UIViewController {
    
    static var identifier = "BookFinderViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeBookFinderButton))
    }
    
    @objc
    func closeBookFinderButton() {
        self.dismiss(animated: true)
    }
    

}
