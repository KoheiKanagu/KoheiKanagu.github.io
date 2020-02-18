#!/bin/sh
DEV_APP_ID_IOS=1:939401085199:ios:8cba0a944ac0b32a413e7a
DEV_GOOGLE_SERVICE_PATH_IOS=ios/Runner/GoogleService-Info.plist

DEV_APP_ID_ANDROID=1:939401085199:android:d5d31653f0322611413e7a
DEV_GOOGLE_SERVICE_PATH_ANDROID=android/app/google-services.json

firebase apps:sdkconfig android $DEV_APP_ID_ANDROID --out $DEV_GOOGLE_SERVICE_PATH_ANDROID
firebase apps:sdkconfig ios $DEV_APP_ID_IOS --out $DEV_GOOGLE_SERVICE_PATH_IOS
