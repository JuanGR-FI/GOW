//
//  GamesController.swift
//  GOW
//
//  Created by Juan Andrés Cervantes Guati Rojo on 05/08/23.
//

import UIKit

class GamesController: UIViewController {
    
    let gamePosters = Array(0...7) //cambiarlo por algo recibido por el segue

    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var posterPageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        posterPageControl.numberOfPages = gamePosters.count
        posterImage.image = UIImage(named: String(gamePosters.first!))
    }
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        //print("right swipe done!")
        if posterPageControl.currentPage == 0  {
            posterPageControl.currentPage = 7
            posterImage.image = UIImage(named: String(gamePosters[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage - 1
            posterImage.image = UIImage(named: String(gamePosters[posterPageControl.currentPage]))
        }
    }
    
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == 7  {
            posterPageControl.currentPage = 0
            posterImage.image = UIImage(named: String(gamePosters[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage + 1
            posterImage.image = UIImage(named: String(gamePosters[posterPageControl.currentPage]))
        }
    }
    

}
