## kakao Map API
![image](https://user-images.githubusercontent.com/58906858/213165867-84fa9b7f-0dc5-46d3-8289-7c5039b278b5.png)

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

## 안드로이드 앱용 카카오 SDK 설치
```
https://apis.map.kakao.com/android/guide/ 에서 안드로이드 앱용 카카오 SDK를 설치한다.
다운로드 받은 SDK의 다음 경로로 이동한 후에 arm 파일들과 .jar 파일 모두를 복사한다.

```
![image](https://user-images.githubusercontent.com/58906858/213152875-081f8dec-beea-4dc9-bda4-eba8937d95f9.png)

## 설치한 라이브러리 파일을 앱 프로젝트에 추가
```
arm 폴더는 app/src/main/jniLibs 경로에 붙여넣고 .jar 파일은 app/libs 경로에 붙여넣는다.
```
![image](https://user-images.githubusercontent.com/58906858/213154163-d13fd5dc-7bc2-459e-b3d9-1322f9ed2ac0.png)

## 권한 설정과 앱키 추가
```
AndroidManifest.xml에 인터넷 권한, 위치 권한 설정을 추가하고 앱키를 추가합니다.
앱 키는 내 애플리케이션의 네이티브 앱 키를 넣어줍니다.

<!--권한 추가 -->
<uses-permission android:name="android.permission.INTERNET">
</uses-permission>
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION">
</uses-permission>

<!--APP KEY 추가-->
<meta-data android:name="com.kakao.sdk.AppKey" android:value="XXXXXXXXXXXXXXXXXXXXXXXXXXXX"/>
```

## flutter_kakao_map 라이브러리 사용
```
최신 버전 0.0.4 버전의 flutter_kakao_map을 사용하기 위해 터미널에 
flutter pub add flutter_kakao_map 명령어를 실행하여 yaml파일의 의존성을 추가해줍니다.
```

## 예제 코드 사용
![image](https://user-images.githubusercontent.com/58906858/213165731-36db1122-ca9f-4027-b02f-d2549536664a.png)

```
결과적으로는 잘 안된다.... flutter가 구글 기반이라 그런가 구글 맵 api만 잘 작동했다. naver와 kakao는 맵 구현에 실패했다.
```
