//
//  ViewController.swift
//  2DA_EVA_2_TABLAS
//
//  Created by LUIS FERNANDO on 07/03/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    let misDatos = ["1","hola mundo","tercero","cuarto","cinco","seis","siete","ocho","nueve","diez",]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title:"Tus datos",message: misDatos[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("primera")
       //Falta asignar los datos del arreglo a la celda que se va a reutilizar
        celda?.textLabel?.text = misDatos[indexPath.row];
        
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        
        return celda!;
    }

}

