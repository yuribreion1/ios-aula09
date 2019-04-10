//
//  ViewController.swift
//  aula-09
//
//  Created by Usuário Convidado on 10/04/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblRota: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    
    @IBAction func escolherRota(_ sender: Any) {
        // mensagem, botoes, exibicao - Assim e composta uma mensagem
        let alerta = UIAlertController(
            title: "Forma para receber a rota do veiculo",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: { (action) in
                self.lblRota.text = action.title
        }))
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertAction.Style.default,
            handler: { (action) in
                self.lblRota.text = action.title
        }))
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil
        ))
        
        present(alerta, animated: true, completion: nil)
    }
    
    //Stepper
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = "\(Int(meuStepper.value))" //Fazendo cast do cast para ficar como inteiro
        print(lblAno.text)
    }
    
    //Slider
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblKm.text = "\(Int(sender.value))"
        print(lblKm.text);
    }
    
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if (sender.isOn) {
            print("Restreamento ativado")
        } else {
            print("Restreamento desativado")
        }
    }
    
    
    //Segmented Control
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Você escolheu o \(meuSegmento.titleForSegment(at: 0)!)");
            break;
        case 1:
            print("Você escolheu o \(meuSegmento.titleForSegment(at: 1)!)");
            break;
        case 2:
            print("Você escolheu o \(meuSegmento.titleForSegment(at: 2)!)");
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980";
        lblKm.text = "7500";
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func salvar(_ sender: Any) {
        
        // Formato explicito de criacao de variavel
        var numero1:Int = 8
        // Formato explicito declarativo
        var total = numero1 + 40
        print(total)
        
        //Quando vc cria uma variavel com ? ela é chamada de _Optional_
        
        var numero2:Int?
        numero2 = nil //Nulo
        numero2 = 10
        total = numero2! + 20 //! é usado para fazer o unwrapper do conteúdo
        print(total)
        
        var nome:String="Maria Souza"
        var nome2:String?
        nome2="Joana Cruz"
        var nome3:String!
        nome3="Mario Lago"
        print(nome);
        print(nome2);
        
        //Para imprimir de forma explicita
        print(nome2!);
        print(nome3);
        
    }
    
}

