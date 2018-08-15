//
//  ForYouViewController.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit


class ForYouViewController: UITableViewController{
    
    let cellId = "cellId"
    var cells: [CellContent] = [CellContent]()
    var currentCell: CellContent?
    
    
    
    // functions to init table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ForYouCell
        currentCell = cells[indexPath.row]
        cell.cellContent = currentCell
        cell.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 0.8)
        cell.layer.cornerRadius = 15
        cell.selectionStyle = .none
        cell.separatorInset = UIEdgeInsets.zero
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let estimatedHeigth = CGFloat(100)
        
        // estimates the hight of the cell based of its content
//        if let cell = currentCell {
//
//            let approxWidth = view.frame.width - 100
//
//            let size = CGSize(width: approxWidth, height: 1000)
//
//            let attributes : [NSAttributedStringKey : Any] = [.font: UIFont.systemFont(ofSize: 16)]
//
//
//            let estimatedFrame = NSString(string: cell.content).boundingRect(with: size, options: .usesLineFragmentOrigin , attributes: attributes, context: nil)
        
            // estimatedHeigth += estimatedFrame.height - 30
       // }
        
        return estimatedHeigth
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        let text = UITextView()
        text.text = "Hallo Sarah, heute ist der 14. August. Hier sind deine wichtigsten Informationen:"
        text.frame = CGRect(x: 12 + 15, y: 0, width: 200, height: 30)
        view.addSubview(text)
        view.backgroundColor = .red
        return view
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Für Dich"
        
        // inserts Cell Content
        cells = createCells(cells)
        tableView.register(ForYouCell.self, forCellReuseIdentifier: cellId)
        

        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // loads background
        //view.backgroundColor = Theme.currentTheme.backgroundColor
        if Theme.currentTheme is ClassicTheme {
            let imageView = UIImageView(image: #imageLiteral(resourceName: "background_View"))
            tableView.backgroundView = imageView
        } else {
            view.backgroundColor = Theme.currentTheme.backgroundColor
            tableView.backgroundView = nil
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
