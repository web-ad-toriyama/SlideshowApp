
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
//        let width = imageArray[nowIndex].size.width
//        let height = imageArray[nowIndex].size.height
//        image.frame = CGRect(x:0,y:0, width:width*2,height:height * 2)
//        image.frame = CGRect(x:0,y:0, width:width*2,height:height * 2)
    }
    


}
