
import UIKit
import PlaygroundSupport


let font = UIFont(name: "Noteworthy", size: 25)

class HojeViewController: UIViewController {
    
    let buttons = UIButton()

    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let background = UIImage(named: "background.jpeg")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        let botanico = UIImage(named: "botanico.png")
        let vasoView = UIImageView(image: botanico)
        vasoView.frame = CGRect(x: 161, y: 330, width: 50, height: 50)
        
        let button = UIButton(frame: CGRect(x: 240, y: 550, width: 50, height: 50))
        button.setTitle("Continuar", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(botanico, for: .normal)

        
        let label = UILabel()
        let font = UIFont(name: "Noteworthy", size: 25)

        label.frame = CGRect(x: 33, y: 30, width: 200, height: 200)
        label.text = "Hoje,  minha \n        prantinha  de"
        label.textColor = .black
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth
        label.font = font
        

        
        buttons.frame = CGRect(x: 161, y: 270, width: 40, height: 40)
        buttons.setTitleColor(.black, for: .normal)
        
        view.addSubview(backgroundView)
        view.addSubview(vasoView)
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(buttons)
        
        self.view = view
        
    }
    
    @objc func tapButton() {
        show(secondViewController, sender: nil)

    }
}

class SecondViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let background = UIImage(named: "background.jpeg")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        let botanico = UIImage(named: "botanico.png")
        
        let button1 = UIButton(frame: CGRect(x: 161, y: 170, width: 50, height: 50))
    //    button1.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button1.setImage(botanico, for: .normal)
        
        let button2 = UIButton(frame: CGRect(x: 71, y: 239, width: 50, height: 50))
     //   button2.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button2.setImage(botanico, for: .normal)
        
        let button3 = UIButton(frame: CGRect(x: 251, y: 239, width: 50, height: 50))
  //      button3.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button3.setImage(botanico, for: .normal)
        
        let button4 = UIButton(frame: CGRect(x: 107, y: 339, width: 50, height: 50))

      //  button4.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button4.setImage(botanico, for: .normal)
        
        let button5 = UIButton(frame: CGRect(x: 216, y: 339, width: 50, height: 50))

    //    button5.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button5.setImage(botanico, for: .normal)
        
        
        let label2 = UILabel()

        label2.frame = CGRect(x: 33, y: 25, width: 200, height: 200)
        label2.text = "está..."
        label2.textColor = .black
        label2.numberOfLines = 2
        label2.adjustsFontSizeToFitWidth
        label2.font = font
        
        let button = UIButton(frame: CGRect(x: 240, y: 500, width: 50, height: 50))
        button.setTitle("então eu...", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.setImage(botanico, for: .normal)

        view.addSubview(backgroundView)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button)
        view.addSubview(label2)
    
        self.view = view
    }
    
    @objc func tapButton() {
        show(thirdViewController, sender: nil)
    }
}

class ThirdViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let background = UIImage(named: "background.jpeg")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        
        let botanico = UIImage(named: "botanico.png")
        
        let button = UIButton(frame: CGRect(x: 240, y: 500, width: 50, height: 50))
        button.setTitle("->", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        button.setImage(botanico, for: .normal)
    
        view.addSubview(backgroundView)
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        show(vermelho, sender: nil)

    }
}

//: TELA DOIS
class HomeViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        self.view = view
    }
}


//: TELA TRES

class LogViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
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

let flicts = HojeViewController()
let itemImage3 = UIImage(systemName: "leaf.arrow.circlepath")
flicts.tabBarItem = UITabBarItem(title: nil, image: itemImage3, tag: 0)
flicts.title = "Hoje"


//: A segunda tela será vermelha. Configuramos o título e a cor dela.
// the red controller
let vermelho = HomeViewController()
vermelho.color = .white
//: Também criamos um UITabBarItem para ela, a partir de um item padrão do sistema.
//: + Como o título afeta o TabBarItem nesse caso?
let itemImage2 = UIImage(systemName: "leaf.arrow.circlepath")
vermelho.tabBarItem = UITabBarItem(title: nil, image: itemImage2, tag: 0)
vermelho.title = "Home"

//: A terceira tela será verde, de cor e de título.
// the green controller
let verde = LogViewController()
verde.color = .white
verde.title = "Verde"


let itemImage = UIImage(systemName: "paperplane")
verde.tabBarItem = UITabBarItem(title: nil, image: itemImage, tag: 0)


let viewControllers = [
    flicts,
    vermelho,
    verde,
]

let tabBarController = UITabBarController()
tabBarController.viewControllers = viewControllers
PlaygroundPage.current.liveView = tabBarController


