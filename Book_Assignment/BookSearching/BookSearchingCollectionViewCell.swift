//
//  BookSearchingCollectionViewCell.swift
//  Book_Assignment
//
//  Created by Mac Pro 15 on 2022/09/01.
//

import UIKit

class BookSearchingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
    @IBOutlet weak var bookCoverImageView: UIImageView!
    
    func configureCell(data: Movie) {
        
        bookTitleLabel.text = data.title
        bookTitleLabel.textColor = .white
        bookTitleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        bookRatingLabel.text = "\(data.rate)"
        bookRatingLabel.textColor = .white
        bookRatingLabel.font = .systemFont(ofSize: 8)
        
        bookCoverImageView.layer.cornerRadius = 5
    }
}
