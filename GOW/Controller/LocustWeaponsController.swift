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
            description: "Was a single-shot, pump-action grenade launcher designed and used primarily by Locust, specifically the Boomer.",
            poster: "BoomshotGrenadeLauncher"
        ),
        Weapon(
            id: 2, name: "weapon.hammerburst",
            description: "was the Locust standard-issue, high-powered assault rifle. It is often referred to as the Locust counterpart to the COG Lancer Assault Rifle.",
            poster: "HammerburstII"
        ),
        Weapon(
            id: 3, name: "weapon.mulcher",
            description: "The Mulcher is a heavy, hand-cranked, rotary gatling gun developed by the Coalition of Ordered Governments.",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.bolo.grenade",
            description: "The Bolo Grenade, otherwise known as the Fragmentation Grenade, was the standard-issue fragmentation grenade used by the Coalition of Ordered Governments, the Locust Horde and the Swarm.",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.boltok",
            description: "was the standard-issue sidearm of the Locust, specifically the Drones. The pistol continues the Locust weapon-design philosophy of creating weapons with an emphasis towards brute force.",
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
        cell.wName.text = NSLocalizedString(arrayWeapons[indexPath.row].name, comment: "")
        cell.wImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.wDescription.text = arrayWeapons[indexPath.row].description
        return cell
    }
    

}
