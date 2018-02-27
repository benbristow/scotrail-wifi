# ScotRail Wifi Connect

![ScotRail](https://user-images.githubusercontent.com/1159378/36716951-10095840-1b94-11e8-88dc-afa71e4c2a42.png)

## What?

* Total hackjob script. Should connect you automatically to most Icomera ScotRail 'ScotRail Free Wifi' train hotspots instantly. Developed & tested on an East Kilbride service.

* Will not work within stations - they use Level3 WiFi hotspots for that instead which use a different authentication system.

* Would probably be able to be modified for other Icomera hotspots (trains/buses etc.).

## Use it

Ensure you have a recent version of Ruby installed and Bundler

```
git clone https://github.com/benbristow/scotrail-wifi.git
cd scotrail-wifi
bundle install
chmod +x wifi.rb
./wifi.rb
```

## Legal

This goes without saying. By using this script you agree to use the WiFi sensibly as it's provided for all passengers. By using this script you also agree to any/all ScotRail WiFi T&C's.
