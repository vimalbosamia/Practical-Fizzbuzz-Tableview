//
//  ViewController.swift
//  Demo
//
//  Created by Vimal on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let array = Array(1...1000)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
          
        let number = array[indexPath.row]
        var string : String = ""
        if (number % 15) == 0{
            string = "FizzBuzz"
          
       } else if (number % 3) == 0{
           string = "Fizz"
           
        } else if(number % 5) == 0{
            string = "Buzz"
            
        }
        cell.textLabel?.text = "Index : \(indexPath.row) --  \(number) -- \(string)"
        print("Index : --- %@ %@",indexPath.row , string)
        return cell
    }
    
    
}
