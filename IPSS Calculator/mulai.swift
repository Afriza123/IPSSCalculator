//
//  mulai.swift
//  IPSS Calculator
//
//  Created by Afriza Alafwandy Winata on 03/09/21.
//

import UIKit

class mulai: UIViewController {
    
    var sisa:Int = 0
    var ulang:Int = 0
    var putus:Int = 0
    var nunda:Int = 0
    var lemah:Int = 0
    var mengejan:Int = 0
    var bangun:Int = 0
    var total:Int = 0

    @IBOutlet weak var pertanyaan: UILabel!
    @IBOutlet weak var kembalipertanyaan: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            kembalipertanyaan.isHidden = true
        }
    }
    
    @IBAction func kembalipertanyaan(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
            pertanyaan.text = "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?"
            kembalipertanyaan.isHidden = true
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                    pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                        pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                            pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func tidakpernah(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 0
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 0
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 0
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 0
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 0
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 0
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 0
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func kurangdari20(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 1
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 1
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 1
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 1
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 1
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 1
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 1
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func sekitar2050(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 2
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 2
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 2
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 2
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 2
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 2
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 2
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func setengah(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 3
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 3
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 3
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 3
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 3
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 3
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 3
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func lebihdarisetengah(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 4
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 4
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 4
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 4
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 4
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 4
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 4
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func selalu(_ sender: Any) {
        if pertanyaan.text == "Seberapa sering Anda merasa masih terdapat sisa setelah kencing?" {
            self.sisa = 5
            print("sisa =", sisa)
            pertanyaan.text = "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?"
            kembalipertanyaan.isHidden = false
        }
        else {
            if pertanyaan.text == "Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?" {
                self.ulang = 5
                print("ulang =", ulang)
                pertanyaan.text = "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?"
            }
            else {
                if pertanyaan.text == "Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?" {
                    self.putus = 5
                    print("putus =", putus)
                    pertanyaan.text = "Seberapa sering Anda sulit untuk menunda kencing?"
                }
                else {
                    if pertanyaan.text == "Seberapa sering Anda sulit untuk menunda kencing?" {
                        self.nunda = 5
                        print("nunda =", nunda)
                        pertanyaan.text = "Seberapa sering pancaran kencing Anda lemah?"
                    }
                    else {
                        if pertanyaan.text == "Seberapa sering pancaran kencing Anda lemah?" {
                            self.lemah = 5
                            print("lemah =", lemah)
                            pertanyaan.text = "Seberapa sering Anda harus mengejan untuk memulai kencing?"
                        }
                        else {
                            if pertanyaan.text == "Seberapa sering Anda harus mengejan untuk memulai kencing?" {
                                self.mengejan = 5
                                print("mengejan =", mengejan)
                                pertanyaan.text = "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?"
                            }
                            else {
                                if pertanyaan.text == "Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?" {
                                    self.bangun = 5
                                    print("bangun =", bangun)
                                    self.total = sisa + ulang + putus + nunda + lemah + mengejan + bangun
                                    print("total =", total)
                                    performSegue(withIdentifier: "hasil", sender: self)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as? hasil
        next?.total = total
    }

}
