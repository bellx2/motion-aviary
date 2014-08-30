Aviary RubyMotion Sample
====

Basic image-editing sample project using [AviarySDK]

![image](https://qiita-image-store.s3.amazonaws.com/0/14768/870aae4e-88c1-aeb1-06a7-59d4b5d3bc0a.jpeg "image")

## Install

### 1.Download SDK

以下のサイトよりデベロッパー登録をしてSDKをダウンロードします。
http://developers.aviary.com

### 2.Regist Application

MyAppsからアプリケーション登録をすると、keyとsecretが表示されます。このキーをSDKで使います。

### 3.Copy files, Set key & secret

下記の位置にSDKのファイルをコピーします。

* vender/AviarySDK.framework
* resources/AviarySDKResources.bunlde

その後、config.ymlにkeyとsecretを登録します。

### 4. Build & Run

```
  bundle install
  rake pod:install
  rake
```

## その他情報

Qiita:

[Aviary]: https://aviary.com
[AviarySDK]: http://developers.aviary.com

## Licence

MIT

## Author

[Bellx2](https://github.com/bellx2)

