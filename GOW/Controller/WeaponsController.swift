//
//  WeaponsController.swift
//  GOW
//
//  Created by Juan Andrés Cervantes Guati Rojo on 05/08/23.
//

import UIKit

class WeaponsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var gowTableView: UITableView!
    
    var arrayWeapons : [Weapon] = []
    //    CGO Weapons
    let cgoWeapons : [Weapon] = [
        Weapon(
            id: 1, name: "weapon.lancer.mark1",
            description: "weapon.lancer.mark1.description",
            poster: "Mark1LancerAssaultRifle"
        ),
        Weapon(
            id: 2, name: "weapon.lancer.mark2",
            description: "weapon.lancer.mark2.description",
            poster: "LancerMk2"
        ),
        Weapon(
            id: 3, name: "weapon.longshot.sniper",
            description: "weapon.longshot.sniper.description",
            poster: "LongshotSniperRifle"
        ),
        Weapon(
            id: 4, name: "weapon.hammer.dawn",
            description: "weapon.hammer.dawn.description",
            poster: "HammerOfDawn"
        ),
        Weapon(
            id: 5, name: "weapon.snub.pistol",
            description: "weapon.snub.pistol.description",
            poster: "SnubPistol"
        )
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayWeapons = cgoWeapons

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! WeaponCell
        cell.wName.text = NSLocalizedString(arrayWeapons[indexPath.row].name, comment: "")
        cell.wImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.wDescription.text = NSLocalizedString(arrayWeapons[indexPath.row].description, comment: "")
        return cell
    }
    

}
