//
//  BookSearchingCollectionViewController.swift
//  Book_Assignment
//
//  Created by Mac Pro 15 on 2022/09/01.
//

import UIKit

/*도서프로젝트 화면전환 포인트
 -. UIBarButtonItem에서 #selector사용해서 액션 적용해준다.
 -. UINavigationController사용해서 전환화면끼리 연결시켜준다.
 -.
 
 */

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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(moveToBookFinderButton))
        
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
    
    //도서검색화면 이동
    @objc
    func moveToBookFinderButton() {
        let sb = UIStoryboard(name: "BookSearching", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: BookFinderViewController.identifier) as! BookFinderViewController
        let navi = UINavigationController(rootViewController: vc)
        navi.modalPresentationStyle = .fullScreen
        self.present(navi, animated: true)
        //self.navigationController?.pushViewController(vc, animated: true) //push형태로 화면전환
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
    
    //도서상세화면 이동
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "BookSearching", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: BookDetailViewController.identifier) as! BookDetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
