#!/bin/bash

# 1. Tarihi al (YılAyGünSaat formatında)
ZAMAN=$(date +%Y%m%d_%H%M)

# 2. Dosya ismini oluştur
HEDEF_DOSYA="/home/senolozdemir/devops-seruveni/gun-1/yedekler/yedek_$ZAMAN.tar.gz"

# 3. Kaynak klasör (Neyi sıkıştıracağız?)
KAYNAK_KLASOR="/home/senolozdemir/devops-seruveni/gun-1/kaynak_kod"

# 4. Bilgi ver
echo "Yedekleme başlıyor: $HEDEF_DOSYA oluşturulacak..."

# Sıkıştır ve Kaydet (tar -czf [hedef] [kaynak])
#tar -czf /home/senolozdemir/devops-seruveni/gun-1/kaynak_kod

# 5. Sıkıştırma komutu  tar - czf [OLUŞACAK_DOSYA] [KAYNAK]
tar -czf "$HEDEF_DOSYA" "$KAYNAK_KLASOR"

echo "İşlem tamam! Yedek şuraya oluşturuldu: $HEDEF_DOSYA"

