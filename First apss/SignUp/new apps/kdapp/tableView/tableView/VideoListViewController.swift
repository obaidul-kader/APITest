//
//  VideoListViewController.swift
//  tableView
//
//  Created by U.M. Hamidul islam on 1/1/20.
//  Copyright © 2020 MirZobayer. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
//        tableView.delegate = self
//        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "a")!, title: "First Image")
        let video2 = Video(image: UIImage(named: "b")!, title: "Second Image")
        let video3 = Video(image: UIImage(named: "c")!, title: "Third Image")
        let video4 = Video(image: UIImage(named: "d")!, title: "Fourth Image")
        let video5 = Video(image: UIImage(named: "e")!, title: "Fifth Image")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        
        return tempVideos
        
    }
}

    extension VideoListViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let video = videos[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
            
            cell.setVideo(video: video)
            return cell
    }

}
