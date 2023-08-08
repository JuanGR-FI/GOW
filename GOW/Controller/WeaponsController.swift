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
            id: 1, name: "Mark 1 Lancer Assault Rifle",
            description: "Dubbed the Retro Lancer during the Lambent Pandemic, was the predecessor to the Mark 2 Lancer Assault Rifle. Formerly the main assault rifle of the Coalition of Ordered Governments Army, the Mark 1 Assault Rifle was used throughout the Pendulum War.",
            poster: "Mark1LancerAssaultRifle"
        ),
        Weapon(
            id: 2, name: "Mark 2 Lancer Assault Rifle",
            description: "An upgrade to the Mark 1 Lancer Assault Rifle, produced with a chainsaw bayonet, increased accuracy, lower recoil, and larger ammunition carrying capacity but less firepower compared to its predecessor.",
            poster: "LancerMk2"
        ),
        Weapon(
            id: 3, name: "Longshot Sniper Rifle",
            description: "Was a high-caliber, single-shot, bolt-action sniper rifle. Created by the Coalition of Ordered Governments during the Pendulum Wars, the Longshot was used even seventeen years after Emergence Day.",
            poster: "LongshotSniperRifle"
        ),
        Weapon(
            id: 4, name: "Hammer of Dawn",
            description: "The Hammer of Dawn was a COG Imulsion-energized, orbital, satellite-based laser. Its key components were invented by the UIR scientist Mauris Ivo and completed by professor Adam Fenix after it was stolen during Operation: Leveler.",
            poster: "HammerOfDawn"
        ),
        Weapon(
            id: 5, name: "MX8 Snub Pistol",
            description: "Was the standard sidearm for Coalition of Ordered Governments armed forces personnel",
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
        cell.wName.text = arrayWeapons[indexPath.row].name
        cell.wImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.wDescription.text = arrayWeapons[indexPath.row].description
        return cell
    }
    

}
