Bir Android uygulamasında, kullanıcı haritadaki bir marker'a tıkladığında seçilen konuma doğru yol tarifi başlatılmalıdır. Google Maps için şu URI şeması kullanılacaktır:

val uri = Uri.parse("google.navigation:q=${place.geometry.location.lat},${place.geometry.location.lng}")
val intent = Intent(Intent.ACTION_VIEW, uri)
intent.setPackage("com.google.android.apps.maps")
startActivity(intent)

Lütfen yukarıdaki fonksiyonu MainActivity.kt içinde `setOnMarkerClickListener` bloğunda `showInfoWindow(tag)` çağrısından sonra çalışacak şekilde entegre eden kodu üret.
