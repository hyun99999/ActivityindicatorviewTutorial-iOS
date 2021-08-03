# ActivityindicatorviewTutorial-iOS
🌀 오픈 라이브러리 NVActivityIndicatorView 를 활용한 튜토리얼

**출처 : [https://github.com/ninjaprox/NVActivityIndicatorView](https://github.com/ninjaprox/NVActivityIndicatorView)**

### 실습
<img src = "https://user-images.githubusercontent.com/69136340/128038003-579f59b3-1bbd-49d0-8df6-7a47e937db8a.gif" width ="250">

- 다음과 같은 activity indicator 를 제공한다.
<img src = "https://user-images.githubusercontent.com/69136340/128037644-509cc6af-74c9-46a5-90c3-697a2fec2d48.gif" width ="250">

<img src = "https://user-images.githubusercontent.com/69136340/128038293-fe4f150c-272b-4b81-bf95-6c3f406251f4.png" width = "800">

### 코드
- initializer

<img src ="https://user-images.githubusercontent.com/69136340/128038661-55a5a1c8-5138-4909-992c-2b4b5b4fa0da.png" width = "500">

- DispatchQueue 를 사용해보았다.
```swift
let indicator = NVActivityIndicatorView(frame: CGRect(x: 160, y: 300, width: 50, height: 50), type: .ballRotateChase, color: .black, padding: 0)
self.view.addSubview(indicator)

DispatchQueue.main.async {
    indicator.startAnimating()
    print("isAnimating : \(indicator.isAnimating)")
}

DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    indicator.stopAnimating()
    print("isAnimating : \(indicator.isAnimating)")
}
```
