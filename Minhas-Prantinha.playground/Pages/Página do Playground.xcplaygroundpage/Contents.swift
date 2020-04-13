import UIKit
import PlaygroundSupport


let cfURL = Bundle.main.url(forResource: "Noteworthy-Lt", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)


// no meu caso nos nomes das fontes impressas percebi q
// Gilbert-Color.otf tem nome "Gilbert Color"

class MyViewController : UIViewController {
 let buttons = UIButton()

    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        

        let label = UILabel()
        
        label.frame = CGRect(x: 33, y: 75, width: 200, height: 200)
        label.text = "Hoje,  minha \n        prantinha  de"
        label.textColor = .black
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth

        let font = UIFont(name: "Noteworthy", size: 25)

        label.font = font
        
        
        buttons.frame = CGRect(x: 161, y: 270, width: 40, height: 40)
        buttons.setTitle("Toque", for: .normal)
        buttons.setTitleColor(.black, for: .normal)
    
        view.addSubview(label)
        view.addSubview(buttons)
        
        self.view = view
    }
    // ainda podemos usar viewDidLoad
    override func viewDidLoad() {
        buttons.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
        
    }
    @IBAction func touchedButton() {
        print("oi")

 
        // no meu caso nos nomes das fontes impressas percebi q
        // Gilbert-Color.otf tem nome "Gilbert Color"

    }
}

let vc = MyViewController(screenType: .iphone11ProMax, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.7)

