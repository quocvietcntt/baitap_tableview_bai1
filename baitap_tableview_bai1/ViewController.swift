//
//  ViewController.swift
//  baitap_tableview_bai1
//
//  Created by apple on 2024/09/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var listnguoidung:[NguoiDung]!
    
    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.dataSource = self
        mytable.delegate = self
        laydulieu()
    }

    func laydulieu()
    {
        listnguoidung = [
        NguoiDung(hinhanh: "1", hoten: "A pao", mess: "xac nhan dat ban tai Apao", giophut: "14/02"),
        NguoiDung(hinhanh: "2", hoten: "Cong Dong Co Tuong", mess: "Chao mung ban den voi cong dong co tuong", giophut: "10/01"),
        NguoiDung(hinhanh: "3", hoten: "Gia Su Gia Dinh", mess: "vui long roi khoi nhom", giophut: "09/01"),
        NguoiDung(hinhanh: "4", hoten: "Ly Hong Le", mess: "Chac mang ben ban kem qua", giophut: "11/12"),
        NguoiDung(hinhanh: "5", hoten: "Thuy Duong B2", mess: "Xin chao co chu xin chao cac ban xin chao", giophut: "01/03"),
        NguoiDung(hinhanh: "6", hoten: "Linh", mess: "uh", giophut: "12/29"),
        NguoiDung(hinhanh: "7", hoten: "Le Truc Nam", mess: "ok con ga den", giophut: "06/25"),
        NguoiDung(hinhanh: "8", hoten: "Do Lam Lam", mess: "Vang ,ngay mai em lai den nhe", giophut: "12/23"),
        NguoiDung(hinhanh: "1", hoten: "Khanh Ly", mess: "Chao cam on a", giophut: "02/13"),
        NguoiDung(hinhanh: "3", hoten: "Pho", mess: "Ban da nhan tin nhan va cuoc goi", giophut: "04/01")
        ]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listnguoidung.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.imghinh.image = UIImage(named: listnguoidung[indexPath.row].hinhanh)
        cell.imghinh.layer.cornerRadius = 40
        cell.imghinh.layer.backgroundColor = UIColor.black.cgColor
        
        cell.label_hoten.text = listnguoidung[indexPath.row].hoten
        
        cell.label_mess.text = listnguoidung[indexPath.row].mess
        cell.label_mess.textColor = .gray
        cell.label_giophut.text = listnguoidung[indexPath.row].giophut
        cell.label_giophut.textColor = .gray
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listnguoidung[indexPath.row].hoten)
    }
}

