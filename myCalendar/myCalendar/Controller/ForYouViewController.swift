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
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        // minimum size of cells
        let minimumSize = CGFloat(100)
        
        var estimatedHeigth = minimumSize
        
        // estimates the hight of the cell based of its text content
        if let cell = currentCell {

            let approxWidth = view.frame.width - 100

            let size = CGSize(width: approxWidth, height: 1000)

            let attributes : [NSAttributedStringKey : Any] = [.font: UIFont.systemFont(ofSize: 16)]


            let estimatedFrame = NSString(string: cell.content).boundingRect(with: size, options: .usesLineFragmentOrigin , attributes: attributes, context: nil)
        
            
            // incements size if frame is greater than 100
            if estimatedFrame.height > minimumSize {
                estimatedHeigth += estimatedFrame.height - 30
            }
            
        }
        
        return estimatedHeigth
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section:
        Int) -> UIView? {
        
        // creates header for table view, that contains the welcome message
        let view = UIView()
        
        // text for message with name and date
        let text = UITextView()
        text.text = "Hallo Sarah,\nHeute ist der 15. August."
        
        text.backgroundColor = .clear
        text.frame = CGRect(x: 12 + 15, y: 20, width: 300, height: 200)
        text.font = UIFont.systemFont(ofSize: CGFloat(defaults.headerSize))
        view.addSubview(text)
        
        let line = UIImageView()
        line.image = #imageLiteral(resourceName: "fineLine")
        line.frame = CGRect(x: 0, y: 80, width: 400, height: 5)
        view.addSubview(line)
        
        return view
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 85
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Für Dich"
        
        // inserts Cell Content
        cells = createCells(cells)
        tableView.register(ForYouCell.self, forCellReuseIdentifier: cellId)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none

        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // loads background
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
