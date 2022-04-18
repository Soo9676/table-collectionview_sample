//
//  TableViewController.swift
//  sample
//
//  Created by soo on 2022/02/15.
//

import UIKit

class TableViewController: UITableViewController {


    @IBOutlet var tableListView: UITableView!
    var dataSet = [("언차티드", "루벤 플레셔"),
                   ("나일강의 죽음", "케네스 브래너"),
                   ("스파이더맨: 노웨이 홈", "존 왓츠")
    ]
    
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, director) in self.dataSet {
            let movie = MovieVO()
            movie.title = title
            movie.director = director
            
            datalist.append(movie)
        }
        
        return datalist
        
    }()
    
    override func viewDidLoad() {

        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    //개별 행 생성
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //주어진 행에 맞는 데이터 소스를 읽어온다
        let row = self.list[indexPath.row]
        //테이블 셀 객체를 직접 생성하는 대신 큐로부터 가져옴
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = row.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
    }
}
    



