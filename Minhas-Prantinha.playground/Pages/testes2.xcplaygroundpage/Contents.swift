
import UIKit
import PlaygroundSupport


let font = UIFont(name: "Noteworthy", size: 35)
let font2 = UIFont(name: "Noteworthy", size: 12)
let font3 = UIFont(name: "Noteworthy", size: 29)
let font4 = UIFont(name: "Noteworthy", size: 18)

let folha = UIImage(named: "folha.png")

class Pranta: NSObject {
    var nome = ""
    var estado = ""
}

    var planta1 = Pranta()
planta1.nome = "majericão"
planta1.estado = "murcha"

    var planta2 = Pranta()
planta2.nome = "arruda"
planta2.estado = "bonitona"

let arruda = UIButton()
let manjericão = UIButton()
let nomeDaPlanta = UIButton()
let vasoView = UIImageView()
let vasoView2 = UIImageView()





class HojeViewController: UIViewController {
    
    let buttons = UIButton()

    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        
        let vasovazio = UIImage(named: "vasovazio.png")
        let vasoView = UIImageView(image: vasovazio)
        vasoView.frame = CGRect(x: 80, y: 280, width: 220, height: 220)
        
        
        let vasoBonitona = UIImage(named: "Bonitona.png")
        let vasoView2 = UIImageView(image: vasoBonitona)
        vasoView2.frame = CGRect(x: 80, y: 280, width: 220, height: 220)
        vasoView2.isHidden = true

        
        let folha = UIImage(named: "folha.png")
        
        let button = UIButton(frame: CGRect(x: 300, y: 550, width: 50, height: 50))
        button.setTitle("Continuar", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(folha, for: .normal)

        
        let label = UILabel()

        label.frame = CGRect(x: 70, y: 30, width: 300, height: 200)
        label.text = "Hoje,  minha \n     prantinha  de..."
        label.textColor = .black
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth
        label.font = font
        


        nomeDaPlanta.frame = CGRect(x: 122, y: 348, width: 145, height: 80)
        nomeDaPlanta.setTitle("escolha a prantinha", for: .normal)
        nomeDaPlanta.addTarget(nil, action: #selector(escolherPlanta), for: .touchUpInside)
        nomeDaPlanta.setTitleColor( .black, for: .normal)
        
        manjericão.frame = CGRect(x: 122, y: 428, width: 145, height: 80)
        manjericão.setTitle("Manjericão", for: .normal)
        manjericão.addTarget(self, action: #selector(escolhiManjericão), for: .touchUpInside)
        manjericão.setTitleColor( .black, for: .normal)
        manjericão.isHidden = true
        
        arruda.frame = CGRect(x: 122, y: 508, width: 145, height: 80)
        arruda.setTitle("Arruda", for: .normal)
        arruda.addTarget(self, action: #selector(escolhiArruda), for: .touchUpInside)
        arruda.setTitleColor( .black, for: .normal)
        arruda.isHidden = true
        
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
        print(vasoView.isHidden)
        print(vasoView2.isHidden)

    }
    @objc func escolhiArruda() {
        nomeDaPlanta.setTitle("Arruda", for: .normal)
            arruda.isHidden = true
            manjericão.isHidden = true
        vasoView.isHidden = true
        vasoView2.isHidden = false

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


    
    override func loadView() {
        let view = UIView()

        view.backgroundColor = .white
    
        
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        

        
        Bonitonalabel.frame = CGRect(x: 170, y: 137, width: 200, height: 200)
        Bonitonalabel.text = "Bonitona"
        Bonitonalabel.textColor = .black
        Bonitonalabel.numberOfLines = 1
        Bonitonalabel.adjustsFontSizeToFitWidth
        Bonitonalabel.font = font2
        
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

        

        
        let button = UIButton(frame: CGRect(x: 240, y: 500, width: 50, height: 50))
        button.setTitle("então eu...", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(folha, for: .normal)

        view.addSubview(backgroundView)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button)
        view.addSubview(label2)
        view.addSubview(Bonitonalabel)
    
        self.view = view
    }
    
   public func selecionou() {
        
        button1.setImage(BonitonaS, for: .normal)
        button2.setImage(SemCorS, for: .normal)
        button3.setImage(QueimadaS, for: .normal)
        button4.setImage(SecaMurchaS, for: .normal)
        button5.setImage(MortinhaS, for: .normal)


    }
    
    @objc func tapBonitona() {
        selecionou()
        button1.setImage(Bonitona, for: .normal)
        
    }
    @objc func tapSemCor() {
        selecionou()
        button2.setImage(SemCor, for: .normal)
    }
    @objc func tapQueimada() {
        selecionou()
        button3.setImage(Queimada, for: .normal)
    }
    @objc func tapSecaMurcha() {
        selecionou()
        button4.setImage(SecaMurcha, for: .normal)
    }
    @objc func tapMortinha() {
        selecionou()
        button5.setImage(Mortinha, for: .normal)
    }
    
    
    @objc func tapButton() {
        show(thirdViewController, sender: nil)
    }
}

class ThirdViewController: UIViewController {
    
  let canvas = UIImage(named: "canvas.png")
  let canvasclicado = UIImage(named: "canvasclicado.png")
    let estado1 = UIButton(frame: CGRect(x: 61, y: 220, width: 60, height: 60))
    let estado2 = UIButton(frame: CGRect(x: 161, y: 220, width: 60, height: 60))
    let estado3 = UIButton(frame: CGRect(x: 261, y: 220, width: 60, height: 60))
    let estado4 = UIButton(frame: CGRect(x: 61, y: 320, width: 60, height: 60))
    let estado5 = UIButton(frame: CGRect(x: 161, y: 320, width: 60, height: 60))
    let estado6 = UIButton(frame: CGRect(x: 261, y: 320, width: 60, height: 60))

    
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

        
        let botanico = UIImage(named: "botanico.png")
        
        let button = UIButton(frame: CGRect(x: 240, y: 500, width: 50, height: 50))
        button.setTitle("->", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setImage(folha, for: .normal)
        

          
          estado1.addTarget(nil, action: #selector(tapestado1), for: .touchUpInside)
          estado1.setImage(canvas, for: .normal)
          
          estado2.addTarget(nil, action: #selector(tapestado2), for: .touchUpInside)
          estado2.setImage(canvas, for: .normal)
          
          estado3.addTarget(nil, action: #selector(tapestado3), for: .touchUpInside)
          estado3.setImage(canvas, for: .normal)
          
          estado4.addTarget(nil, action: #selector(tapestado4), for: .touchUpInside)
          estado4.setImage(canvas, for: .normal)
          
          estado5.addTarget(nil, action: #selector(tapestado5), for: .touchUpInside)
          estado5.setImage(canvas, for: .normal)
          
          estado6.addTarget(nil, action: #selector(tapestado6), for: .touchUpInside)
          estado6.setImage(canvas, for: .normal)
        
    
        view.addSubview(backgroundView)
        view.addSubview(button)
        view.addSubview(estado1)
        view.addSubview(estado2)
        view.addSubview(estado3)
        view.addSubview(estado4)
        view.addSubview(estado5)
        view.addSubview(estado6)
        view.addSubview(label2)
        self.view = view
    }
    
    @objc func tapButton() {
        show(hoje, sender: nil)

    }
    @objc func tapestado1b() {
        estado1.setImage(canvas, for: .normal)
        estado1.addTarget(nil, action: #selector(tapestado1), for: .touchUpInside)

    }
    @objc func tapestado2b() {
        estado2.setImage(canvas, for: .normal)
        estado2.addTarget(nil, action: #selector(tapestado2), for: .touchUpInside)

    }
    @objc func tapestado3b() {
        estado3.setImage(canvas, for: .normal)
        estado3.addTarget(nil, action: #selector(tapestado3), for: .touchUpInside)


    }
    @objc func tapestado4b() {
        estado4.setImage(canvas, for: .normal)
        estado4.addTarget(nil, action: #selector(tapestado4), for: .touchUpInside)


    }
    @objc func tapestado5b() {
        estado5.setImage(canvas, for: .normal)
        estado5.addTarget(nil, action: #selector(tapestado5), for: .touchUpInside)


    }
    @objc func tapestado6b() {
        estado6.setImage(canvas, for: .normal)
        estado6.addTarget(nil, action: #selector(tapestado6), for: .touchUpInside)


    }
    @objc func tapestado1() {
        estado1.setImage(canvasclicado, for: .normal)
        estado1.addTarget(nil, action: #selector(tapestado1b), for: .touchUpInside)

    }
    @objc func tapestado2() {
        estado2.setImage(canvasclicado, for: .normal)
        estado2.addTarget(nil, action: #selector(tapestado2b), for: .touchUpInside)


    }
    @objc func tapestado3() {
        estado3.setImage(canvasclicado, for: .normal)
        estado3.addTarget(nil, action: #selector(tapestado3b), for: .touchUpInside)


    }
    @objc func tapestado4() {
        estado4.setImage(canvasclicado, for: .normal)
        estado4.addTarget(nil, action: #selector(tapestado4b), for: .touchUpInside)


    }
    @objc func tapestado5() {
        estado5.setImage(canvasclicado, for: .normal)
        estado5.addTarget(nil, action: #selector(tapestado5b), for: .touchUpInside)


    }
    @objc func tapestado6() {
        estado6.setImage(canvasclicado, for: .normal)
        estado6.addTarget(nil, action: #selector(tapestado6b), for: .touchUpInside)


    }
    
}

//: TELA DOIS
class HomeViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        let label = UILabel()
        
        let Bonitona = UIImage(named: "Bonitona.png")
        let vasoView = UIImageView(image: Bonitona)
        vasoView.frame = CGRect(x: 30, y: 70, width: 175, height: 175)
        
        label.frame = CGRect(x: 300, y: 30, width: 200, height: 200)
        label.text = "Minhas \n        Prantinha"
        label.textColor = .black
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth
        label.font = font3
        
        view.addSubview(vasoView)
        view.addSubview(label)
        view.addSubview(backgroundView)
        self.view = view
    }
}


//: TELA TRES

class LogViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        
        let background = UIImage(named: "background.png")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        view.addSubview(backgroundView)
        self.view = view
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
let itemImage3 = UIImage(systemName: "folhatab.png")
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

//: A terceira tela será verde, de cor e de título.
// the green controller
let log = LogViewController()
log.color = .white
log.title = "Verde"


let itemImage = UIImage(systemName: "paperplane")
log.tabBarItem = UITabBarItem(title: nil, image: itemImage, tag: 0)


let viewControllers = [
    hoje,
    home,
    log,
]

let tabBarController = UITabBarController()
tabBarController.viewControllers = viewControllers
PlaygroundPage.current.liveView = tabBarController


