//
//  ViewController.swift
//  Clase3
//
//  Created by Alumno on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroSuperior: UITextField!
    @IBOutlet weak var numeroInferior: UITextField!
    
    @IBAction func Multi(_ sender: Any) {
        let multUno = Double(numeroSuperior.text!)
        let multDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Completa Ambos Campos"
    
        if(multUno != nil && multDos != nil){
            let res = (multDos ?? 0)*(multUno  ?? 0)
            mensaje = String(res)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style : UIAlertAction.Style.cancel))
        self.present(alert,animated: true,completion: nil)
    }
    

    
    @IBAction func Sum(_ sender: Any) {
        let sumaUno = Double(numeroSuperior.text!)
        let sumaDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Completa Ambos Campos"
    
        if(sumaUno != nil && sumaDos != nil){
            let res = (sumaUno ?? 0)+(sumaDos ?? 0)
            mensaje = String(res)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style : UIAlertAction.Style.cancel))
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBAction func Restar(_ sender: Any) {
        let restaUno = Double(numeroSuperior.text!)
        let restaDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Completa Ambos Campos"
    
        if(restaUno != nil && restaDos != nil){
            let res = (restaUno ?? 0)-(restaDos ?? 0)
            mensaje = String(res)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style : UIAlertAction.Style.cancel))
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBAction func dividir(_ sender: Any) {
         //Codigo con validacion de variables
        let dividendoUno = Double(numeroSuperior.text!)
        let divisorUno = Double(numeroInferior.text ?? "0")
        var mensaje = "Completa Ambos Campos"
    
        if(divisorUno != nil && dividendoUno != nil){
            let res = (dividendoUno ?? 0)/(divisorUno ?? 0)
            mensaje = String(res)
        }
        
        // Codigo con validaciond e Excepciones
 //       var mensaje = "Completa Ambos Campos"
//        do{
//            let dividendoUno = Double(numeroSuperior.text!)
//            let divisorUno = Double(numeroInferior.text ?? "0")
//            let res = (dividendoUno ?? 0)/(divisorUno ?? 0)
//            mensaje = String(res)
//        }
//        catch{
//            mensaje = "Ha ocurrido un error"
//        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style : UIAlertAction.Style.cancel))
        self.present(alert,animated: true,completion: nil)
    }
    
    
    @IBAction func botonUnoClick(_ sender: Any){
        let alert = UIAlertController(title: "Alerta", message: usuarioTextField.text,preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert,animated:true,completion:nil)
    }
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var passwdTextField: UITextField!
    @IBOutlet weak var usuarioTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Si soy"
        tituloLabel.textColor = UIColor(red: 38/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }

}


