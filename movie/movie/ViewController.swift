

import UIKit

//let name = ["aaa","bbb","ccc","ddd","eee"]

struct MovieData : Codable {
    let boxOfficeResult : BoxOfficeResult
}
struct BoxOfficeResult : Codable {
    let dailyBoxOfficeList : [DailyBoxOfficeList]
}
struct DailyBoxOfficeList : Codable {
    let movieNm : String
    let audiCnt : String
    let openDt : String
    let rank : String
    let audiAcc : String
}

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var movieData : MovieData?
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var TopTitle: UILabel!
    
    var movieURL = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=57baffed15f040b519d3971b6d6a9d20&targetDt="
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        TopTitle.text = yesterdays() + "  영화 정보"
        movieURL += makeDate()
        getData()
    }
    
    func yesterdays() -> String {
        let now = Date()
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: now)
        
        let yesterday2 = DateFormatter()
        yesterday2.dateFormat = "YYYY-MM-dd"
        let yesterday3 = yesterday2.string(from: (yesterday)!)
        return yesterday3
    }
    
    func makeDate() -> String {
        let now = Date()
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: now)
        let year = DateFormatter()
        year.dateFormat = "YYYY"
        let years = year.string(from: (yesterday)!)
        
        let date = DateFormatter()
        date.dateFormat = "dd"
        let dates = date.string(from: (yesterday)!)
        
        let month = DateFormatter()
        month.dateFormat = "MM"
        let months = month.string(from: (yesterday)!)
        
        //print(dates)
        return years + months + dates
    }
    
    
    
    func getData(){
        if let url = URL(string: movieURL){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                    
                }
            
                if let JSONdata = data {
                    //print(JSONdata, response!)
                    //let dataString = String(data: JSONdata, encoding:  .utf8)
                    //print(dataString!) // 데이터를 스트링으로 찍어보기
                    let decoder = JSONDecoder()
                    do{
                        let decodedData = try decoder.decode(MovieData.self, from: JSONdata)
                        //print(decodedData.boxOfficeResult.dailyBoxOfficeList[0].movieNm)
                        
                        self.movieData = decodedData
                        DispatchQueue.main.async {
                            self.table.reloadData()
                        }
                        
                        
                    }catch{
                        print(error)
                    }
                    
                }
            }
        
            task.resume()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell" , for: indexPath) as! MyTableViewCell
        //cell.moiveName.text = indexPath.description //name[indexPath.row]
        //print(indexPath.description, separator: " ", terminator: " ")
        cell.moiveName.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].movieNm
        
        //cell.ranking.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].rank
        if let ranks = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].rank {
            cell.ranking.text = "\(ranks) 위"
        }
        
        
        //cell.peopleAcc.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiAcc
        if let PeopleAc = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiAcc {
            let numF = NumberFormatter()
            numF.numberStyle = .decimal
            let pAcc = Int(PeopleAc)!
            let pAcc2 = numF.string(for: pAcc)!+"명"
            cell.peopleAcc.text = "누적: \(pAcc2)"
        }
        
        //cell.movieDate.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].openDt
        if let OpenDate = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].openDt {
            cell.movieDate.text = "개봉일 \(OpenDate)"
        }
        
        
        
        return cell
    }
    
    // 타이틀 부분
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection: Int) -> String? {
        return "박스 오피스 ( 영화진흥위원회제공 ) "
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.description)
    }
    
}
