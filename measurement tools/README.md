# Introduction of 5G measurement tools
----------

Our measurement toolset includes **common tools** (iperf3 [2], Wireshark [3], traceroute [4] and XCAL-Mobile [5]), along with **custom-developed tools**, i.e., 360TEL based on Insta360 ONEX’s open APIs [6] and pwrStrip [1]. We mainly introduce how to use XCAL-Mobile, 360TEL, and pwrStrip, while the usage instruction for other tools can be easily found on the Internet.

## XCAL-Mobile
XCAL-Mobile can provide 5G (sub-6 band) and 4G (FDD/TDD) signaling information and physical-layer key performance indicators (KPIs). In our measurement testbed, we run XCAL-Mobile on a laptop tethered to the 5G-radio smartphone via a USB 3.0 cable. We use Dell G3 3779 laptop (Windows 10 x64, Intel Core i7 8th generation, 64GB RAM, 512GB SSD) and ZTE Axon10 Pro smartphone (Qualcomm Snapdragon TM855 + SDX 50M, 12GB RAM, 256GB HDD) in a 5G coverage region. 

After a real-world 5G test, we can export log files (.drm/.drx) from XCAL-Mobile and then parse them in XCAP-Mobile. Note that XCAP-Mobile is a parser supporting XCAL-Mobile, from which we can get the statistic signaling information and KPIs. 

Besides, XCAL-Mobile and XCAP-Mobile are commercial software, which involves some monetary cost. You can click the link **https://accuver.com** to download them and apply for the license.

## 360TEL
360TEL [11] is an end-to-end ultra-HD panoramic video Android APP. We develop the video system based on the Insta360 ONEX’s APIs, which support video encoding/decoding mode switching (hardware or software coder), video resolution and other parameter configurations. 

In our real-world test, we first buy an Insta360 panoramic camera [6] (ONEX in our configuration) and connect it to our 5G smartphone. We then use the 360TEL running on the smartphone to control the camera. At the receiver side, we run a pull-stream player (Aliplayer [7] in our measurement) with RTMP standard support and watch the panoramic live video. As part of the end-to-end video streaming, we build a processing module on the server, acting as a video relaying sever. In particular, we deploy an EasyDSS platform [8] on the HUAWEI cloud [9] for the video relay. 

Note that we just release the 360TEL.apk instead of the source code. Because you have to sign a confidentiality agreement of the API library [6] with Insta360. From our experience, we believe that the process of obtaining this permission is very smooth.

## pwrStrip
pwrStrip is a lightweight smartphone energy consumption monitoring tool. 

Given that the Linux kernel of Android can record the power information (voltage now, current now), we read and analyze this information in a 10ms window. Specifically, we open Termux (a Linux environment) [10] and run the pwrStrip script on it. Meanwhile, we start measuring activities (web browsing, video streaming, game interacting, or file downloading). After interrupting the pwrStrip process, we can get a complete power trace file, which can help us analyze the power consumption pattern.

## References
[1] D. X., "pwrStrip.sh" https://github.com/piaobozaizai/5G_measurement/edit/master/measurement%20tools, 2020.

[2] B. A. Mah, “iperf 3.7,” https://github.com/esnet/iperf/releases/tag/3.7, 2019.

[3] W. org., “Wireshark.” https://www.wireshark.org, 2019.

[4] amatsuda, “traceroute,” https://github.com/amatsuda/traceroute, 2018.

[5] X. org., “Xcal,” https://accuver.com, 2019.

[6] I. team, “Insta360 onex api.” https://www.insta360.com/download/insta360-onex, 2019.

[7] Tinywan, “A rtmp player,” https://github.com/Tinywan/html5-dash-hls-rtmp, 2018.

[8] Babosa, “An open rtmp server,” https://github.com/EasyDSS/EasyDSS, 2019.

[9] H. org., “Huawei cloud,” https://www.huaweicloud.com, 2019.

[10] T. org., “Termux app.” https://github.com/termux/termux-app, 2019.

[11] D. X., "360TEL.apk" https://github.com/piaobozaizai/5G_measurement/edit/master/measurement%20tools, 2020.
