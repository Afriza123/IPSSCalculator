//
//  hasil.swift
//  IPSS Calculator
//
//  Created by Afriza Alafwandy Winata on 03/09/21.
//

import UIKit

class hasil: UIViewController {
    
    @IBOutlet weak var skor: UILabel!
    @IBOutlet weak var parah: UILabel!
    @IBOutlet weak var suggestion: UILabel!
    
    var total:Int = 0
    var nilaiparah = "Gejala ringan"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("total di hasil =", total)
        if total >= 0, total <= 7  {
            self.nilaiparah = "Gejala ringan"
            print("Gejala ringan")
        }
        if total >= 8, total <= 19 {
            self.nilaiparah = "Gejala sedang"
            print("Gejala sedang")
        }
        if total > 19 {
            self.nilaiparah = "Gejala berat"
            print("Gejala berat")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        skor.text = String(total)
        parah.text = nilaiparah
        if nilaiparah == "Gejala ringan" {
            suggestion.text = "Direkomendasikan anda menemui pelayanan kesehatan setempat apabila diperlukan, dan periksa skor IPSS berkala setiap 3-6 bulan"
        }
        else {
            if nilaiparah == "Gejala sedang" {
                suggestion.text = "Direkomendasikan anda menemui pelayanan kesehatan setempat secepatnya sehingga dapat diperiksa dan dapat dilakukan tatalaksana"
            }
            else {
                if nilaiparah == "Gejala berat" {
                    suggestion.text = "Direkomendasikan anda menemui pelayanan kesehatan setempat secepatnya sehingga dapat diperiksa dan dapat dilakukan tatalaksana"
                }
            }
        }
    }
}
