//
//  ViewController.swift
//  Sem7
//
//  Created by krlos90 on 22/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //let paises = ["PERÙ", "CHILE", "COLOMBIA", "ECUADOR", "BRASIL", "URUGUAY", "ARGENTINA"]
    var paises: [Pais] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Establece el nùmero de secciones en el table view, no es obligatorio implementarlo, ya que por defecto su valor es 1
    /*
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 //Secciones: 0, 1
    }
    */
    
    func cargarPaises() {
        let peru = Pais(nombre: "PERÙ", poblacion: 330000, bandera: "")
        let chile = Pais(nombre: "CHILE", poblacion: 300000, bandera: "")
        let argentina = Pais(nombre: "ARGENTINA", poblacion: 130000, bandera: "")
        let venezuela = Pais(nombre: "VENEZUELA", poblacion: 180000, bandera: "")
        let ecuador = Pais(nombre: "ECUADOR", poblacion: 250000, bandera: "")
        let brasil = Pais(nombre: "BRASIL", poblacion: 80000, bandera: "")
        let colombia = Pais(nombre: "COLOMBIA", poblacion: 730000, bandera: "")
        
        paises.append(peru)
        paises.append(chile)
        paises.append(argentina)
        paises.append(venezuela)
        paises.append(ecuador)
        paises.append(brasil)
        paises.append(colombia)
    }
    
    //Retorna el nùmero de filas en una secciòn
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /*
         EJEMPLO CON numberOfSections = 2
        if section == 0 {
            return 3
        }
        return 10
         */
        return paises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*
        //dequeueReusableCell: Mètodo para obtener la referencia de la celda
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPais", for: indexPath)
            
        //haciendo referencia al label contenido dentro de celdaPais mediante el tag de dicho label. Utilizar el tag no es recomendable para aplicaciones con muchas celdas
        let lblPais = celda.viewWithTag(1) as! UILabel // celda.viewWithTag devuelve un view (el cual es el padre de todos los componentes: button, label, etc) lo que convirtiendo a un uilabel
        //lblPais.text = "PERÙ Seccion: \(indexPath.section), Filas: \(indexPath.row)" //Ejemplo con numberOfSections = 2
        
        lblPais.text = paises[indexPath.row]
        
        return celda
         */
        
       
        //Haciendolo sin viewWithTag
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPais", for: indexPath) as! TblPaisViewCell
        
        
        let pais = paises[indexPath.row]
        celda.lblNombre.text = pais.nombre
        celda.lblPoblacion.text = "Poblaciòn: \(pais.poblacion)"
        
        return celda
        
    }
    
}

