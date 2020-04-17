
import UIKit
import PlaygroundSupport


let font = UIFont(name: "Noteworthy", size: 35)
let font2 = UIFont(name: "Noteworthy", size: 12)
let font3 = UIFont(name: "Noteworthy", size: 17)
let font4 = UIFont(name: "Noteworthy", size: 45)
let font5 = UIFont(name: "Noteworthy", size: 14)

var estados1: Bool = false
var estados2: Bool = false
var estados3: Bool = false
var estados4: Bool = false
var estados5: Bool = false
var estados6: Bool = false

let SetaCurva = UIImage(named: "SetaCurva.png")
let setinha2 = UIImage(named: "SetaCurva2.png")
let setinha = UIImageView(image: SetaCurva)


let folha = UIImage(named: "seta.png")

var estadoImg = UIImage(named: "folha.png")

var estado: Int = 0

//class Pranta: NSObject {
//    var nome = ""
//    var estado = ""
//}
//
//var planta1 = Pranta()
//planta1.nome = "majericão"
//planta1.estado = "murcha"
//
//var planta2 = Pranta()
//planta2.nome = "arruda"
//planta2.estado = "bonitona"

let arruda = UIButton()
let manjericão = UIButton()
let nomeDaPlanta = UIButton()
let vasoView = UIImageView()
let vasoView2 = UIImageView()
var vasoView3 = UIImageView()
var vasoView4 = UIImageView()



let viewHome = UIView()

let textoHome = UILabel()
let textoHome2 = UILabel()



class HojeViewController: UIViewController {
    
    let buttons = UIButton()
    
    let button = UIButton(frame: CGRect(x: 290, y: 540, width: 50, height: 50))
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        
        vasoView.image = UIImage(named: "Escolha")
        vasoView.frame = CGRect(x: 80, y: 260, width: 220, height: 220)
        
        
        vasoView2.image = UIImage(named: "Normal")
        vasoView2.frame = CGRect(x: 80, y: 260, width: 220, height: 220)
        vasoView2.isHidden = true
        
        
        let folha = UIImage(named: "seta.png")
        
        button.setTitle("Continuar", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(folha, for: .normal)
        button.isHidden = true
        
        let label = UILabel()
        
        label.frame = CGRect(x: 70, y: 30, width: 300, height: 200)
        label.text = "Hoje,  minha \n     prantinha  de..."
        label.textColor = .black
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth
        label.font = font
        
        
        
        nomeDaPlanta.frame = CGRect(x: 107, y: 485, width: 145, height: 28)
        nomeDaPlanta.setTitle("escolha a prantinha", for: .normal)
        nomeDaPlanta.addTarget(nil, action: #selector(escolherPlanta), for: .touchUpInside)
        nomeDaPlanta.setTitleColor( .black, for: .normal)
        nomeDaPlanta.backgroundColor = .white
        nomeDaPlanta.titleLabel?.font = font3
        
        manjericão.frame = CGRect(x: 107, y: 531, width: 145, height: 28)
        manjericão.setTitle("Manjericão", for: .normal)
        manjericão.addTarget(self, action: #selector(escolhiManjericão), for: .touchUpInside)
        manjericão.setTitleColor( .black, for: .normal)
        manjericão.isHidden = true
        manjericão.backgroundColor = .white
        manjericão.titleLabel?.font = font3
        
        
        arruda.frame = CGRect(x: 107, y: 508, width: 145, height: 28)
        arruda.setTitle("Arruda", for: .normal)
        arruda.addTarget(self, action: #selector(escolhiArruda), for: .touchUpInside)
        arruda.setTitleColor( .black, for: .normal)
        arruda.isHidden = true
        arruda.backgroundColor = .white
        arruda.titleLabel?.font = font3
        
        buttons.frame = CGRect(x: 161, y: 270, width: 40, height: 40)
        buttons.setTitleColor(.black, for: .normal)
        
        
        view.addSubview(backgroundView)
        view.addSubview(vasoView)
        view.addSubview(vasoView2)
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(buttons)
        view.addSubview(nomeDaPlanta)
        view.addSubview(manjericão)
        view.addSubview(arruda)
        
        self.view = view
    }
    
    @objc func escolhiManjericão() {
        nomeDaPlanta.setTitle("Manjericão", for: .normal)
        arruda.isHidden = true
        manjericão.isHidden = true
        vasoView.isHidden = true
        vasoView2.isHidden = false
        button.isHidden = false
    }
    @objc func escolhiArruda() {
        nomeDaPlanta.setTitle("Arruda", for: .normal)
        arruda.isHidden = true
        manjericão.isHidden = true
        vasoView.isHidden = true
        vasoView2.isHidden = false
        button.isHidden = false
        
    }
    @objc func escolherPlanta() {
        arruda.isHidden = false
        manjericão.isHidden = false
        
        
    }
    
    @objc func tapButton() {
        
        show(secondViewController, sender: nil)
    }
}

class SecondViewController: UIViewController {
    
    
    let button = UIButton(frame: CGRect(x: 290, y: 520, width: 50, height: 50))
    let button1 = UIButton(frame: CGRect(x: 161, y: 220, width: 60, height: 60))
    let button2 = UIButton(frame: CGRect(x: 71, y: 289, width: 60, height: 60))
    let button3 = UIButton(frame: CGRect(x: 251, y: 289, width: 60, height: 60))
    let button4 = UIButton(frame: CGRect(x: 107, y: 389, width: 60, height: 60))
    let button5 = UIButton(frame: CGRect(x: 216, y: 389, width: 60, height: 60))
    
    
    let Bonitona = UIImage(named: "Bonitona.png")
    let Mortinha = UIImage(named: "Mortinha.png")
    let Queimada = UIImage(named: "Queimada.png")
    let SecaMurcha = UIImage(named: "SecaMurcha.png")
    let SemCor = UIImage(named: "SemCor.png")
    let BonitonaS = UIImage(named: "BonitonaS.png")
    let MortinhaS = UIImage(named: "MortinhaS.png")
    let QueimadaS = UIImage(named: "QueimadaS.png")
    let SecaMurchaS = UIImage(named: "SecaMurchaS.png")
    let SemCorS = UIImage(named: "SemCorS.png")
    let Bonitonalabel = UILabel()
    let SemCorlabel = UILabel()
    let ComManchaslabel = UILabel()
    let SecaMurchalabel = UILabel()
    let Mortinhalabel = UILabel()
    
    
    
    
    override func loadView() {
        let view = UIView()
        
        view.backgroundColor = .white
        
        
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        
        Bonitonalabel.frame = CGRect(x: 164, y: 195, width: 200, height: 200)
        Bonitonalabel.text = "Bonitona"
        Bonitonalabel.textColor = .black
        Bonitonalabel.numberOfLines = 1
        Bonitonalabel.adjustsFontSizeToFitWidth
        Bonitonalabel.font = font5
        
        SemCorlabel.frame = CGRect(x: 74, y: 264, width: 200, height: 200)
        SemCorlabel.text = "Sem Cor"
        SemCorlabel.textColor = .black
        SemCorlabel.numberOfLines = 1
        SemCorlabel.adjustsFontSizeToFitWidth
        SemCorlabel.font = font5
        
        ComManchaslabel.frame = CGRect(x: 242, y: 264, width: 200, height: 200)
        ComManchaslabel.text = "Com Manchas"
        ComManchaslabel.textColor = .black
        ComManchaslabel.numberOfLines = 1
        ComManchaslabel.adjustsFontSizeToFitWidth
        ComManchaslabel.font = font5
        
        SecaMurchalabel.frame = CGRect(x: 102, y: 369, width: 200, height: 200)
        SecaMurchalabel.text = "Murcha/Seca"
        SecaMurchalabel.textColor = .black
        SecaMurchalabel.numberOfLines = 1
        SecaMurchalabel.adjustsFontSizeToFitWidth
        SecaMurchalabel.font = font5
        
        Mortinhalabel.frame = CGRect(x: 216, y: 369, width: 200, height: 200)
        Mortinhalabel.text = "Mortinha? =("
        Mortinhalabel.textColor = .black
        Mortinhalabel.numberOfLines = 1
        Mortinhalabel.adjustsFontSizeToFitWidth
        Mortinhalabel.font = font5
        
        button1.addTarget(nil, action: #selector(tapBonitona), for: .touchUpInside)
        button1.setImage(BonitonaS, for: .normal)
        
        
        
        
        button2.addTarget(nil, action: #selector(tapSemCor), for: .touchUpInside)
        button2.setImage(SemCorS, for: .normal)
        
        button3.addTarget(nil, action: #selector(tapQueimada), for: .touchUpInside)
        button3.setImage(QueimadaS, for: .normal)
        
        
        button4.addTarget(nil, action: #selector(tapSecaMurcha), for: .touchUpInside)
        button4.setImage(SecaMurchaS, for: .normal)
        
        
        button5.addTarget(nil, action: #selector(tapMortinha), for: .touchUpInside)
        button5.setImage(MortinhaS, for: .normal)
        
        
        let label2 = UILabel()
        
        label2.frame = CGRect(x: 70, y: 30, width: 300, height: 200)
        label2.text = "Estava..."
        label2.textColor = .black
        label2.numberOfLines = 2
        label2.adjustsFontSizeToFitWidth
        label2.font = font
        
        button.setTitle("então eu...", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(folha, for: .normal)
        button.isHidden = true
        
        view.addSubview(backgroundView)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button)
        view.addSubview(label2)
        view.addSubview(Bonitonalabel)
        view.addSubview(SemCorlabel)
        view.addSubview(ComManchaslabel)
        view.addSubview(SecaMurchalabel)
        view.addSubview(Mortinhalabel)
        
        self.view = view
    }
    
    public func selecionou() {
        
        button1.setImage(BonitonaS, for: .normal)
        button2.setImage(SemCorS, for: .normal)
        button3.setImage(QueimadaS, for: .normal)
        button4.setImage(SecaMurchaS, for: .normal)
        button5.setImage(MortinhaS, for: .normal)
        button.isHidden = false
        
        
        
    }
    
    @objc func tapBonitona() {
        selecionou()
        button1.setImage(Bonitona, for: .normal)
        estado = 1
    }
    
    
    
    
    @objc func tapSemCor() {
        selecionou()
        button2.setImage(SemCor, for: .normal)
        estado = 2
        
    }
    @objc func tapQueimada() {
        selecionou()
        button3.setImage(Queimada, for: .normal)
        estado = 3
    }
    @objc func tapSecaMurcha() {
        selecionou()
        button4.setImage(SecaMurcha, for: .normal)
        estado = 4
    }
    @objc func tapMortinha() {
        selecionou()
        button5.setImage(Mortinha, for: .normal)
        estado = 5
    }
    
    
    @objc func tapButton() {
        show(thirdViewController, sender: nil)
    }
}

class ThirdViewController: UIViewController {
    
    let gota = UIImage(named: "Gota.png")
    let gotaS = UIImage(named: "GotaS.png")
    let solo = UIImage(named: "Solo.png")
    let soloS = UIImage(named: "SoloS.png")
    let solmais = UIImage(named: "Sol+.png")
    let solmaisS = UIImage(named: "Sol+S.png")
    let solmenos = UIImage(named: "Sol-.png")
    let solmenosS = UIImage(named: "Sol-S.png")
    let trocaVaso = UIImage(named: "TrocaVaso.png")
    let trocaVasoS = UIImage(named: "TrocaVasoS.png")
    let etc = UIImage(named: "Etc.png")
    let etcS = UIImage(named: "EtcS.png")
    
    let estado1 = UIButton(frame: CGRect(x: 61, y: 220, width: 60, height: 60))
    let estado2 = UIButton(frame: CGRect(x: 161, y: 220, width: 60, height: 60))
    let estado3 = UIButton(frame: CGRect(x: 261, y: 220, width: 60, height: 60))
    let estado4 = UIButton(frame: CGRect(x: 61, y: 360, width: 60, height: 60))
    let estado5 = UIButton(frame: CGRect(x: 161, y: 360, width: 60, height: 60))
    let estado6 = UIButton(frame: CGRect(x: 261, y: 360, width: 60, height: 60))
    
    let linha1 = UILabel()
    let linha2 = UILabel()
    
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        
        
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 70, y: 30, width: 300, height: 200)
        label2.text = "Então eu..."
        label2.textColor = .black
        label2.numberOfLines = 2
        label2.adjustsFontSizeToFitWidth
        label2.font = font
        
        
        
        let button = UIButton(frame: CGRect(x: 280, y: 520, width: 50, height: 50))
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setImage(folha, for: .normal)
        
        
        
        estado1.addTarget(nil, action: #selector(tapestado1), for: .touchUpInside)
        estado1.setImage(gota, for: .normal)
        estado1.layer.cornerRadius = 5
        estado1.layer.borderWidth = 1
        estado1.backgroundColor = .clear
        estado1.layer.borderColor = UIColor.black.cgColor
        
        
        
        estado2.addTarget(nil, action: #selector(tapestado2), for: .touchUpInside)
        estado2.setImage(solmais, for: .normal)
        estado2.layer.cornerRadius = 5
        estado2.layer.borderWidth = 1
        estado2.backgroundColor = .clear
        estado2.layer.borderColor = UIColor.black.cgColor
        
        estado3.addTarget(nil, action: #selector(tapestado3), for: .touchUpInside)
        estado3.setImage(trocaVaso, for: .normal)
        estado3.layer.cornerRadius = 5
        estado3.layer.borderWidth = 1
        estado3.backgroundColor = .clear
        estado3.layer.borderColor = UIColor.black.cgColor
        
        estado4.addTarget(nil, action: #selector(tapestado4), for: .touchUpInside)
        estado4.setImage(solo, for: .normal)
        estado4.layer.cornerRadius = 5
        estado4.layer.borderWidth = 1
        estado4.backgroundColor = .clear
        estado4.layer.borderColor = UIColor.black.cgColor
        
        estado5.addTarget(nil, action: #selector(tapestado5), for: .touchUpInside)
        estado5.setImage(solmenos, for: .normal)
        estado5.layer.cornerRadius = 5
        estado5.layer.borderWidth = 1
        estado5.backgroundColor = .clear
        estado5.layer.borderColor = UIColor.black.cgColor
        
        estado6.addTarget(nil, action: #selector(tapestado6), for: .touchUpInside)
        estado6.setImage(etc, for: .normal)
        estado6.layer.cornerRadius = 5
        estado6.layer.borderWidth = 1
        estado6.backgroundColor = .clear
        estado6.layer.borderColor = UIColor.black.cgColor
        
        linha1.frame = CGRect(x: 61, y: 200, width: 700, height: 200)
        linha1.text = "Reguei                       Dei Sol                     Troquei o vaso"
        linha1.textColor = .black
        linha1.numberOfLines = 1
        linha1.adjustsFontSizeToFitWidth
        linha1.font = font2
        
        linha2.frame = CGRect(x: 61, y: 340, width: 700, height: 200)
        linha2.text = "Melhorei o solo          Tirei do Sol                Outro"
        linha2.textColor = .black
        linha2.numberOfLines = 1
        linha2.adjustsFontSizeToFitWidth
        linha2.font = font2
        
        view.addSubview(backgroundView)
        view.addSubview(button)
        view.addSubview(estado1)
        view.addSubview(estado2)
        view.addSubview(estado3)
        view.addSubview(estado4)
        view.addSubview(estado5)
        view.addSubview(estado6)
        view.addSubview(label2)
        view.addSubview(linha1)
        view.addSubview(linha2)
        
        
        
        self.view = view
    }
    
    @objc func tapButton() {
        chamasegundatela()
        setinha.isHidden = true
        
        if estado == 1 {
            vasoView4.image = UIImage(named: "Bonitona.png")
            textoHome.text = "Ai, que coisa linda! \n\nContinue assim,\nsua prantinha agradece!"
            textoHome2.text = "Dê uma olhada no diário só para manter\n         todo cuidado que você já vem tendo"
            vasoView4.frame = CGRect(x: 30, y: 300, width: 150, height: 150)
            
        }
        
        if estado == 2 {
            vasoView4.image = UIImage(named: "SemCor.png")
            textoHome.text = "Tá bem clarinha, né? \n\nPor que não bota ela no\nSol pra pegar uma cor?"
            textoHome2.text = "Dê uma olhada no diário para ver direitinho\n         e não perder o ritmo dos cuidados"
            vasoView4.frame = CGRect(x: 30, y: 300, width: 150, height: 150)
            
            
            
        }
        
        if estado == 3 {
            vasoView4.image = UIImage(named: "Queimada.png")
            textoHome.text = "Uma manchinha aqui,\noutra alí... \n\nTalvez ela esteja tomando\n muito Sol e se queimou!"
            textoHome2.text = "Dê uma olhada no diário para ver direitinho\n         e não perder o ritmo dos cuidados"
            vasoView4.frame = CGRect(x: 30, y: 300, width: 150, height: 150)
            
            
        }
        
        if estado == 4 {
            vasoView4.image = UIImage(named: "SecaMurcha.png")
            textoHome.text = "Secou, a coitada...\n\n Isso deve ser falta de água, viu?"
            textoHome2.text = "Dê uma olhada no diário em tudo que foi\n         feito nesses dias para ver o que faltou"
            vasoView4.frame = CGRect(x: 30, y: 280, width: 150, height: 150)
            
            
        }
        
        if estado == 5 {
            vasoView4.image = UIImage(named: "Mortinha.png")
            textoHome.text = "Não se desespere!\n\nAlgumas vezes pode\nparecer que já era...\nMas tente dar mais\natenção, carinho e água!"
            textoHome2.text = "Dê uma olhada no diário em tudo que foi\n         feito nesses dias para ver o que faltou"
            vasoView4.frame = CGRect(x: 30, y: 280, width: 150, height: 150)
            
            
        }
        
        
        
        textoHome.frame = CGRect(x: 180, y: 270, width: 200, height: 200)
        textoHome.textColor = .black
        textoHome.numberOfLines = 6
        textoHome.adjustsFontSizeToFitWidth
        textoHome.font = font3
        
        textoHome2.frame = CGRect(x: 45, y: 440, width: 350, height: 200)
        textoHome2.textColor = .black
        textoHome2.numberOfLines = 6
        textoHome2.adjustsFontSizeToFitWidth
        textoHome2.font = font3
        
        
        
        
        
        
        
        
        
        
        
    }
    @objc func tapestado1b() {
        estado1.setImage(gota, for: .normal)
        estado1.addTarget(nil, action: #selector(tapestado1), for: .touchUpInside)
        estados1 = true
        
    }
    @objc func tapestado2b() {
        estado2.setImage(solmais, for: .normal)
        estado2.addTarget(nil, action: #selector(tapestado2), for: .touchUpInside)
        estados2 = true
    }
    @objc func tapestado3b() {
        estado3.setImage(trocaVaso, for: .normal)
        estado3.addTarget(nil, action: #selector(tapestado3), for: .touchUpInside)
        estados3 = true
        
    }
    @objc func tapestado4b() {
        estado4.setImage(solo, for: .normal)
        estado4.addTarget(nil, action: #selector(tapestado4), for: .touchUpInside)
        estados4 = true
        
    }
    @objc func tapestado5b() {
        estado5.setImage(solmenos, for: .normal)
        estado5.addTarget(nil, action: #selector(tapestado5), for: .touchUpInside)
        estados5 = true
        
    }
    @objc func tapestado6b() {
        estado6.setImage(etc, for: .normal)
        estado6.addTarget(nil, action: #selector(tapestado6), for: .touchUpInside)
        estados6 = true
        
    }
    @objc func tapestado1() {
        estado1.setImage(gotaS, for: .normal)
        estado1.addTarget(nil, action: #selector(tapestado1b), for: .touchUpInside)
        estados1 = false
        
    }
    @objc func tapestado2() {
        estado2.setImage(solmaisS, for: .normal)
        estado2.addTarget(nil, action: #selector(tapestado2b), for: .touchUpInside)
        estados2 = false
        
    }
    @objc func tapestado3() {
        estado3.setImage(trocaVasoS, for: .normal)
        estado3.addTarget(nil, action: #selector(tapestado3b), for: .touchUpInside)
        estados3 = false
        
    }
    @objc func tapestado4() {
        estado4.setImage(soloS, for: .normal)
        estado4.addTarget(nil, action: #selector(tapestado4b), for: .touchUpInside)
        estados4 = false
        
    }
    @objc func tapestado5() {
        estado5.setImage(solmenosS, for: .normal)
        estado5.addTarget(nil, action: #selector(tapestado5b), for: .touchUpInside)
        estados5 = false
        
    }
    @objc func tapestado6() {
        estado6.setImage(etcS, for: .normal)
        estado6.addTarget(nil, action: #selector(tapestado6b), for: .touchUpInside)
        estados6 = false
        
    }
    
}

//: TELA DOIS
class HomeViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        viewHome.backgroundColor = self.color
        
        vasoView4.image = UIImage(named: "Escolha.png")
        textoHome.text = "Você ainda não me contou sobre\nsuas prantinhas!"
        textoHome2.text = "Vá na seção Hoje\n         e me conte tudo!"
        vasoView4.frame = CGRect(x: 30, y: 300, width: 150, height: 150)
        
        setinha.frame = CGRect(x: 50, y: 550, width: 30, height: 30)
        
        
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        let label = UILabel()
        let label3 = UILabel()
        
        label.frame = CGRect(x: 70, y: 25, width: 300, height: 200)
        label.text = "Minhas"
        label.textColor = .black
        label.adjustsFontSizeToFitWidth
        label.font = font4
        
        label3.frame = CGRect(x: 70, y: 75, width: 300, height: 200)
        label3.text = "     Prantinha"
        label3.textColor = .black
        label3.adjustsFontSizeToFitWidth
        label3.font = font4
        
        textoHome.frame = CGRect(x: 180, y: 270, width: 200, height: 200)
        textoHome.textColor = .black
        textoHome.numberOfLines = 6
        textoHome.adjustsFontSizeToFitWidth
        textoHome.font = font3
        
        textoHome2.frame = CGRect(x: 45, y: 440, width: 350, height: 200)
        textoHome2.textColor = .black
        textoHome2.numberOfLines = 6
        textoHome2.adjustsFontSizeToFitWidth
        textoHome2.font = font3
        
        
        viewHome.addSubview(backgroundView)
        viewHome.addSubview(label)
        viewHome.addSubview(label3)
        viewHome.addSubview(textoHome)
        viewHome.addSubview(textoHome2)
        viewHome.addSubview(vasoView4)
        viewHome.addSubview(setinha)
        
        self.view = viewHome
    }
}


//: TELA TRES

class LogViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let logview = UIView()
        logview.backgroundColor = self.color
        
        let label = UILabel()
        let labeldiariofixo = UILabel()
        let labeldiario = UILabel()
        
        label.frame = CGRect(x: 70, y: 15, width: 300, height: 200)
        label.text = "Diário"
        label.textColor = .black
        label.adjustsFontSizeToFitWidth
        label.font = font4
        
        labeldiariofixo.frame = CGRect(x: 70, y: 75, width: 500, height: 300)
        labeldiariofixo.text = "na Quinta (16/04) você:\n - Regou\n - Deu mais Sol\n      à sua prantinha de Arruda"
        labeldiariofixo.textColor = .black
        labeldiariofixo.adjustsFontSizeToFitWidth
        labeldiariofixo.font = font3
        labeldiariofixo.numberOfLines = 6
        
        
        labeldiario.frame = CGRect(x: 70, y: 300, width: 500, height: 300)
        labeldiario.text = "Sexta (hoje) você:"
        labeldiario.textColor = .black
        labeldiario.adjustsFontSizeToFitWidth
        labeldiario.font = font3
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        
        logview.addSubview(label)
        logview.addSubview(labeldiariofixo)
        logview.addSubview(backgroundView)
        self.view = logview
    }
}

let firstViewController = HojeViewController()
let secondViewController = SecondViewController()
//secondViewController.modalPresentationStyle = .fullScreen
let thirdViewController = ThirdViewController()


//: --------------
//: ## As telas que exibiremos

//: A primeira tela terá a cor padrão, flicts. Damos um título para ela também.
//: + Como o título afeta a exibição dela na tab bar?

let hoje = HojeViewController()
let itemImage3 = UIImage(named: "Hojetab.png")
hoje.tabBarItem = UITabBarItem(title: nil, image: itemImage3, tag: 0)
hoje.title = "Hoje"


//: A segunda tela será vermelha. Configuramos o título e a cor dela.
// the red controller
let home = HomeViewController()
home.color = .white
//: Também criamos um UITabBarItem para ela, a partir de um item padrão do sistema.
//: + Como o título afeta o TabBarItem nesse caso?
let itemImage2 = UIImage(named: "coracaotab.png")
home.tabBarItem = UITabBarItem(title: nil, image: itemImage2, tag: 0)
home.title = "Minhas Prantinha"

let log = LogViewController()
log.color = .white
log.title = "Verde"


let itemImage = UIImage(named: "Diariotab")
log.tabBarItem = UITabBarItem(title: nil, image: itemImage, tag: 0)
log.title = "Diário"


let viewControllers = [
    hoje,
    home,
    log,
]

func chamasegundatela(){
    thirdViewController.dismiss(animated: false)
    secondViewController.dismiss(animated: true)
    tabBarController.selectedViewController = home
}

let tabBarController = UITabBarController()
tabBarController.viewControllers = viewControllers
PlaygroundPage.current.liveView = tabBarController
