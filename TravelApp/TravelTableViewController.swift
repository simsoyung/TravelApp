//
//  TravelTableViewController.swift
//  TravelApp
//
//  Created by 심소영 on 5/26/24.
//

import UIKit

struct Magazine {
    var title: String
    var subtitle: String
    var photo_image: String
    var date: String
}

class TravelTableViewController: UITableViewController {
    
    let magazine: [Magazine] = [
      Magazine(title: "유럽 여행 쇼핑 성지 \n OOO은 꼭 가세요!", subtitle: "유럽의 인기 쇼핑 명소 총정리", photo_image: "https://images.unsplash.com/photo-1716369415085-4a6876f91840?q=80&w=2828&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231118"),
      Magazine(title: "현지 MZ가 알려주는 \n 오사카 MZ 인기 스팟", subtitle: "2024 오사카 여행엔 여기!", photo_image: "https://images.unsplash.com/photo-1716404084927-176ee37a9dbe?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "240103"),
      Magazine(title: "2024 NEWS 해외여행 \n 이렇게 달라졌다!", subtitle: "알고 준비하는 2024 새 여행", photo_image: "https://images.unsplash.com/photo-1715937527911-14a019e0bd95?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "240108"),
      Magazine(title: "소중한 연차, 이때 쓰세요! \n 2024 황금연휴 캘린더", subtitle: "미리 세우는 2024년 여행 계획", photo_image: "https://images.unsplash.com/photo-1715646527352-3e9a4e406952?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231225"),
      Magazine(title: "팜유 PICK 대만 여행지 \n '타이중'의 맛과 멋", subtitle: "타이중 매력 스팟은 여기!", photo_image: "https://images.unsplash.com/photo-1716321952175-11aecece3462?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231222"),
      Magazine(title: "떠나요 \n 둘이서 낭만이 있는 하와이로", subtitle: "새해 첫 여행, 따듯한 하와이로!", photo_image: "https://i.namu.wiki/i/n7Kj6D6BXGoYr4z7SzJ0RqRyENggrmU-1zMCZcNRJD6ctTp1mw4U6fvnjxkQxJiUu5eMGzxWq4C1BPS1z9YCg7xICNs511ogSJON5UHfxRsVFov4Ao-e-grXaUCxYtYReLtYRQpPpwY8W-RaQ246XQ.webp", date: "231221"),
      Magazine(title: "한 달 살기의 성지 \n 치앙마이의 재발견", subtitle: "현지인이 말하는 치앙마이의 매력", photo_image: "https://images.unsplash.com/photo-1715559067654-d485ab2618aa?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231218"),
      Magazine(title: "태국 여행 전 필수! \n 대표 음식부터 주문 꿀팁까지", subtitle: "팟타이를 더 맛있게 주문하는 방법?", photo_image: "https://plus.unsplash.com/premium_photo-1664366320037-6cad9e3c6e20?q=80&w=2532&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231215"),
      Magazine(title: "트리플 유저 \n PICK 2023 인기 장소 TOP 10", subtitle: "새롭게 등록된 BEST 스팟까지!", photo_image: "https://images.unsplash.com/photo-1716364020115-0800909941b9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date: "231231"),
      Magazine(title: "소원을 빌어요 🙏 \n 새해맞이 해돋이 명소 7", subtitle: "배낭톡 in 새해 해돋이", photo_image: "https://images.unsplash.com/photo-1510784722466-f2aa9c52fff6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVEJTk1JUI0JUVCJThGJThCJUVDJTlEJUI0fGVufDB8fDB8fHww", date: "240101"),
      Magazine(title: "크리스마스 분위기 가득! \n 국내 일루미네이션 명소 ✨", subtitle: "요즘 SNS에서 핫한 장소 총정리", photo_image: "https://images.unsplash.com/photo-1529973625058-a665431328fb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8JUVEJTgxJUFDJUVCJUE2JUFDJUVDJThBJUE0JUVCJUE3JTg4JUVDJThBJUE0fGVufDB8fDB8fHww", date: "240101"),
      Magazine(title: "야시장 천국 '대만 여행' \n 먹킷리스트", subtitle: "요즘 가장 인기 있는 메뉴는 OO", photo_image: "https://images.unsplash.com/photo-1530014708989-55a898ad9552?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fCVFQiU4QyU4MCVFQiVBNyU4Q3xlbnwwfHwwfHx8MA%3D%3D", date: "240103"),
      Magazine(title: "핑크빛 바다가 펼쳐지는 \n 환상의 섬, 롬복", subtitle: "잊히지 않는 TV속 그곳!", photo_image: "https://plus.unsplash.com/premium_photo-1671595277425-601080e369db?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8JTA4JUVEJTk1JTkxJUVEJTgxJUFDJTIwJUVCJUIwJTk0JUVCJThCJUE0fGVufDB8fDB8fHww", date: "240101"),
      Magazine(title: "여행 고수가 알려주는 \n 새벽 비행기 이용 꿀팁", subtitle: "이제 공항에서 시간 때울 걱정 끝!", photo_image: "https://images.unsplash.com/photo-1436491865332-7a61a109cc05?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVCJUI5JTg0JUVEJTk2JTg5JUVBJUI4JUIwfGVufDB8fDB8fHww", date: "240105"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 540
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TravelTableViewCell
        let data = magazine[indexPath.row]
        let url = URL(string: data.photo_image)
        cell.mainImage.kf.setImage(with: url)
        cell.mainImage.contentMode = .scaleAspectFill
        cell.mainImage.layer.cornerRadius = 10
        
        cell.mainLabel.text = data.title
        cell.mainLabel.numberOfLines = 2
        cell.mainLabel.font = .systemFont(ofSize: 24, weight: .heavy)
        cell.mainLabel.textAlignment = .left
        
        cell.subLabel.text = data.subtitle
        cell.subLabel.font = .systemFont(ofSize: 14, weight: .bold)
        cell.subLabel.textColor = .lightGray
        cell.subLabel.textAlignment = .left
        
        let dateStr = data.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyMMdd"
        let convertDate = dateFormatter.date(from: dateStr)
        let mydate = DateFormatter()
        mydate.dateFormat = "yy년 MM월 dd일"
        mydate.locale = Locale(identifier: "ko_KR")
        let result = mydate.string(from: convertDate!)
        cell.dateLabel.text = result
        cell.dateLabel.font = .systemFont(ofSize: 14, weight: .bold)
        cell.dateLabel.textColor = .lightGray
        cell.dateLabel.textAlignment = .right
        
        cell.layer.cornerRadius = 10

        return cell
    }
}
