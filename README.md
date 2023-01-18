## kakao Map API
```
Google Map API와 Naver Map API를 사용해보았다. 이번에는 Kakao Map API를 사용하여 앱에 지도를 표시하는 
앱 프로젝트를 진행하였다. https://developers.kakao.com/ 사이트에서 kakao developer 계정을 만든다.
```
![image](https://user-images.githubusercontent.com/58906858/213147126-18d7dd1c-ad0f-4b1f-8473-a5b2772aa70b.png)

## 패키지명과 해시키 등록
```
애플리케이션을 추가한 후에 Android 플랫폼 등록화면에서 패키지명과 해시키를 등록해야 한다.
안드로이드 스튜디오는 설치할 때 개발용 키 해시를 하나씩 부여받고 시작한다.
개발 키 해시는 안드로이드 파일 내에 있다. 
cmd를 하나 켜고 C:\Program Files\Android\Android Studio\jre\bin로 이동하여 
keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore -storepass android -keypass android | openssl sha1 -binary | openssl base64
명령어를 사용한다.
명령어를 사용하기 전에 SHA-1 키를 Base64로 인코딩한 것을 해시키라고 하는 데 암호화를 하기 위해서는 
암호화 프로그램인 openssl라고 하는데 openssl을 운영체제에 맞게 설치한 후에 환경 변수로 등록해준다.
keytool 이하 명령어를 입력하면 디버깅용 해시키를 하나 얻는 데 이것을 입력해주면 된다.
```
