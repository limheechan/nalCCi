
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
        //리턴 완료 후 키보드 닫기
        serchTextFiled.endEditing(true)
        print(serchTextFiled.text!)
    }
    //--------------------------Delegate--------------------------
    // click to return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //리턴 완료 후 키보드 닫기
        serchTextFiled.endEditing(true)
        print(serchTextFiled.text!)
        return true
    }
    // textFiled 종료가 되며 발동
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        serchTextFiled.text = ""
    }
    // textFiled 검색을 헀는지에 대한 유효성 검사
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField.text != ""{
            textField.placeholder = "Search"
            return true
        }else{ // 입력을 하고 나도 이게 됨
            textField.placeholder = "도시를 검색 해보세요"
            return false
        }
        
    }
}

