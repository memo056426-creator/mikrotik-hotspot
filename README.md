# MikroTik Hotspot Portal

بوابة Hotspot عربية وخفيفة مخصصة لـ MikroTik RouterOS، مصممة أساسًا للجوال.

## الملفات

- `login.html` صفحة تسجيل الدخول
- `status.html` حالة الاتصال واستهلاك الجلسة
- `logout.html` صفحة تسجيل الخروج
- `error.html` صفحة الأخطاء
- `style.css` التصميم المتجاوب
- `app.js` وظائف الواجهة البسيطة
- `routeros/update-hotspot.rsc` سكربت تحديث ملفات البوابة من GitHub

## التوافق

صفحة الدخول تدعم MikroTik CHAP وتعتمد على ملف `md5.js` الافتراضي الموجود أصلًا داخل مجلد Hotspot في RouterOS. سكربت التحديث لا يحذف ملفات MikroTik الافتراضية، بل يستبدل ملفات الواجهة المخصصة فقط.

## التثبيت على MikroTik

يفترض السكربت أن مجلد صفحات الـ Hotspot هو `hotspot`. شغّل أوامر `routeros/update-hotspot.rsc` من Terminal في RouterOS بعد التأكد أن Hotspot مفعّل وأن الراوتر يستطيع الوصول إلى GitHub عبر HTTPS.

المصدر:
`https://github.com/memo056426-creator/mikrotik-hotspot`

## ملاحظة أمان

لا تضع كلمات مرور الراوتر أو مفاتيح API أو بيانات المستخدمين داخل هذا المستودع العام.
