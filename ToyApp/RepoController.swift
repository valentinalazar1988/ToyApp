//
//  RepoController.swift
//  ToyApp
//
//  Created by Valentina on 24.10.2021.
//

import UIKit

class RepoController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var repoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repoTable.register(UINib.init(nibName: "MyProrotypeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "repoCell")
        repoTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = repoTable.dequeueReusableCell(withIdentifier: "repoCell", for: indexPath) as? MyProrotypeCellTableViewCell
        else {
            return UITableViewCell()
        }
        // dequeueReusableCell = returneaza un optional
        cell.cellTitle.text = "Aceasta e celula nr\(indexPath.row)"
        cell.subtitle.text = "Subtitlu nt \(indexPath.row)"
        return cell
    }
}

