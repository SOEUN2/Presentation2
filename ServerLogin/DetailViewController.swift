//
//  DetailViewController.swift
//  ServerLogin
//
//  Created by Digital Media Dept on 2018. 5. 10..
//  Copyright © 2018년 Digital Media Dept. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var textName: UILabel!
    @IBOutlet var textDate: UILabel!
    @IBOutlet var textDescription: UILabel!
    
    
    var selectedData: FavoriteData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
/*
        // Do any additional setup after loading the view.
        guard let favoriteData = selectedData else { return }
        textName.text = favoriteData.name
        textDate.text = favoriteData.date
        textDescription.numberOfLines = 0   // multiple lines
        textDescription.text = favoriteData.descript
        var imageName = favoriteData.image
        if (imageName != "") {
            let urlString = "http://localhost:8888/favorite/"
            imageName = urlString + imageName
             /*let url = URL(string: imageName)!
           if let imageData = try? Data(contentsOf: url) {
                imageView.image = UIImage(data:imageData)
            }*/
        }*/
    }
    
@IBAction func buttonDelete() {
        let alert = UIAlertController(title: "정말 삭제 하시겠습니까?", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Delete", style: .cancel, handler: { action in
            //let urlString: String = "http://localhost:8888/favorite/deleteFavorite.php"
            //guard let requestURL = URL(string: urlString) else { return }
            //var request = URLRequest(url: requestURL)
            //request.httpMethod = "POST"
            //guard let favoriteNO = self.selectedData?.favoriteno else { return }
            //let restString: String = "favoriteno=" + favoriteNO
            //request.httpBody = restString.data(using: .utf8)
            //let session = URLSession.shared
            //let task = session.dataTask(with: request) { (responseData, response, responseError) in
                //guard responseError == nil else { return }
                //guard let receivedData = responseData else { return }
                //if let utf8Data = String(data: receivedData, encoding: .utf8) {
                    //print(utf8Data)  // php에서 출력한 echo data가 debug 창에 표시됨
                //}
            //}
            //task.resume()
            self.navigationController?.popViewController(animated: true)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    
    //evaluations.remove(at: indexPath.row)
    //tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
