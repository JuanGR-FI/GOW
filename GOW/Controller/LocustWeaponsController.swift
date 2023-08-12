//
//  LocustWeaponsController.swift
//  GOW
//
//  Created by Juan Andrés Cervantes Guati Rojo on 07/08/23.
//

import UIKit

class LocustWeaponsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var locustTableView: UITableView!
    
    var arrayWeapons : [Weapon] = []

    //    Locus Weapons
    let locusWeapons : [Weapon] = [
        Weapon(
            id: 1, name: "weapon.boomshot",
            description: "weapon.boomshot.description",
            poster: "BoomshotGrenadeLauncher"
        ),
        Weapon(
            id: 2, name: "weapon.hammerburst",
            description: "weapon.hammerburst.description",
            poster: "HammerburstII"
        ),
        Weapon(
            id: 3, name: "weapon.mulcher",
            description: "weapon.mulcher.description",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.bolo.grenade",
            description: "weapon.bolo.grenade.description",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.boltok",
            description: "weapon.boltok.description",
            poster: "BoltokPistol"
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        arrayWeapons = locusWeapons
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! WeaponCell
        cell.wName.text = (arrayWeapons[indexPath.row].name).localized
        cell.wImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.wDescription.text = (arrayWeapons[indexPath.row].description).localized
        return cell
    }
    

}
