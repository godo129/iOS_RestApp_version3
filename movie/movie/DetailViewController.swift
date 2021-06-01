//
//  DetailViewController.swift
//  movie
//
//  Created by comsoft on 2021/06/02.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    var movieName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = movieName
        navigationItem.title = movieName
        let urlKorString = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=" + movieName
        let urlString = urlKorString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!  // 한글 가능하게 하기
        guard let url = URL(string: urlString) else { return  }
        let request = URLRequest(url: url)
        webView.load(request)  // 웹 뷰 나오게 하기

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
