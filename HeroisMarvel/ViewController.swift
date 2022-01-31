//
//  ViewController.swift
//  HeroisMarvel
//
//  Created by John Allen Santos Coimbra on 31/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        tfName.resignFirstResponder()
        let vc = segue.destination as! HeroesTableViewController
        vc.name = tfName.text
    }

}

