# DynamicHeightCustomCell
Custom cell with dynamic height

Steps
1. Add CustomCell.swift file inside your project
2. Inside you view did load method register your custom cell class 
 
 override func viewDidLoad() {
        super.viewDidLoad()
        tableVeiw.register(CustomCell.self, forCellReuseIdentifier: "CellId")        
    }
    
 3. Replace your cellForRowAtIndexPath Method with this
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath) as! CustomCell
           cell.nameLabel.text = " Hello custom cell" 
           return cell
       }
    
    
    
    Note**. For testing you can replace "Hello custom cell" with very long text, your cell height will increase dynamically.
