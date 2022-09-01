//
//  BookSearchingCollectionViewController.swift
//  Book_Assignment
//
//  Created by Mac Pro 15 on 2022/09/01.
//

import UIKit

/*질문
 -. itemsize UI적용 안되는 이유?
 -. MovieInfo, Movie구조체, configureCell함수 관련 초기화, 매개변수 사용관계 모르겠음(
 -. cellForItemAt에서 indexpath.row을 사용하는게 cell을 재사용할때마다 item 갯수가 늘어나는걸 배열 인덱스랑 맞춘다는 뜻인지?
 */
private let reuseIdentifier = "Cell"

class BookSearchingCollectionViewController: UICollectionViewController {
    
    let bookInformation = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let spacing : CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        let itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookInformation.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookSearchingCollectionViewCell", for: indexPath) as! BookSearchingCollectionViewCell
        let data = bookInformation.movie[indexPath.row]
        //cell.configureCell(data: data)
        cell.backgroundColor = .orange
        
        return cell
    }

}
