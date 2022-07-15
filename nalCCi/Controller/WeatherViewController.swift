
import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var serchTextFiled: UITextField!
    //키보드 에 go  버튼을 눌렀을 때..? 어떻게 해야 반응이 일어 나는가?
    // -> UITextFieldDelegate 를 통해 클레스가 텍스트 편집 및 유효성 검사를 관리할 수 있다.
    override func viewDidLoad() {
        super.viewDidLoad()
        //텍스트 필드가 뷰 컨트롤러에 다시 보고 ( 감시자 같은 ? ) 
        serchTextFiled.delegate = self
        
    }
    // Magnifying Glass
    @IBAction func searchPressed(_ sender: UIButton) {
        print(serchTextFiled.text!)
    }
    // click to return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(serchTextFiled.text!)
        return true
    }

}

