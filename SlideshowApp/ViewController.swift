
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var autoButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var ImageView: UIImageView!
    
    var nowIndex:Int = 0
    var timer: Timer!
    var previewIndex:Int = 0
    
    var imageArray:[UIImage] = [
        UIImage(named: "赤")!,
        UIImage(named: "黄")!,
        UIImage(named: "緑")!
    ]
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        let detailController: DetailController = segue.destination as! DetailController
        detailController.nowIndex = nowIndex
        previewIndex = nowIndex
        
    }
    
    @IBAction func viewpage(_ sender: Any) {
        self.performSegue(withIdentifier: "preview", sender: nil)
    }
    
    @IBAction func imageAuto(_ sender: Any) {
        if (timer == nil) {
            nextButton.isEnabled = false
            prevButton.isEnabled = false
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)

            autoButton.setTitle("停止", for: .normal)

        } else {
            nextButton.isEnabled = true
            prevButton.isEnabled = true
            timer.invalidate()
            timer = nil
            autoButton.setTitle("再生", for: .normal)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = imageArray[nowIndex]
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue){
        ImageView.image = imageArray[previewIndex]
        nowIndex = previewIndex
    }
    @objc func changeImage() {
        nowIndex += 1

        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
 
        ImageView.image = imageArray[nowIndex]
    }
    @IBAction func changeImageprev(_ sender: Any) {
        if (nowIndex == 0) {
            nowIndex = imageArray.count
        }
        
        nowIndex -= 1
 
        ImageView.image = imageArray[nowIndex]
    }
    
    @IBAction func changeImaenext(_ sender: Any) {
        changeImage()
    }
    
}

