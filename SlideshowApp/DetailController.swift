
import UIKit

class DetailController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    var imageArray:[UIImage] = [
        UIImage(named: "赤")!,
        UIImage(named: "黄")!,
        UIImage(named: "緑")!
    ]
    var nowIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = imageArray[nowIndex]

    }
    


}
