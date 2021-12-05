//
//  ViewController.swift
//  FIM2021-12-04-2
//
//  Created by 村中令 on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    let fimRepository = FIMRepository()
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button1(_ sender: Any) {
        let assosser = Assessor(name: "評価者１")
        let tagetPerson = TargetPerson(name: "対象者")
        let fim = FIM(eating: 1, grooming: 1, bathing: 1, dressingUpperBody: 1, dressingLowerBody: 1, toileting: 1, bladderManagement: 1, bowelManagement: 1, transfersBedChairWheelchair: 1, transfersToilet: 1, transfersBathShower: 1, walkWheelchair: 1, stairs: 1, comprehension: 1, expression: 1, socialInteraction: 1, problemSolving: 1, memory: 1)
        fimRepository.apppendAssessor(assesor: assosser)
        fimRepository.appendTargetPerson(assessorUUID: assosser.uuid!, targetPerson: tagetPerson)
        fimRepository.appendFIM(targetPersonUUID: tagetPerson.uuid!, fim: fim)
    }

    @IBAction func button2(_ sender: Any) {
        var assessorFirst = fimRepository.loadAssessor().first
        assessorFirst?.name = "評価者１変更"
        fimRepository.apppendAssessor(assesor: assessorFirst!)

    }

    @IBAction func button3(_ sender: Any) {
    }
}
