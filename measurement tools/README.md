# Introduction of the 5G measurement tools
----------

Our measurement tool set includes common tools (iperf3 [2], Wireshark [3], traceroute [4], and XCAL-Mobile [5]), along with custom-developed tools, i.e., 360TEL based on Insta360 ONEX’s open APIs [6] and pwrStrip [1]. We mainly introduce on how to use XCAL-Mobile, 360TEL, and pwrStrip, while the usage instruction for iperf3, Wireshark and traceroute can be easily found on the Internet.

## XCAL-Mobile
XCAL-Mobile can provide 5G and 4G signaling information and physical-layer key performance indicators
(KPIs). XCAL-Mobile runs on a laptop tethered to the 5G-radio smartphone via a USB 3.0 cable. In our measurement
testbed, we use Dell G3 3779 laptop (Windows 10 x64, Intel Core i7 8th generation, 64GB RAM, 512GB SSD)
and ZTE Axon10 Pro smartphone (Qualcomm Snapdragon TM855 + SDX 50M, 12GB RAM, 256GB HDD) in a
5G coverage region. After a real-world 5G test, we can export log files (.drm/.drx) from XCAL-Mobile and parse
them in XCAP-Mobile. Note that XCAP-Mobile is a parser supporting XCAL-Mobile, from which we can get the
statistic information of the L1/L2 network performance. Note that XCAL and XCAP [5] are commercial software,
which involves monetary cost.

## 360TEL
360TEL is an ultra HD panoramic live video Android APP. Based on the Insta360 ONEX’s APIs, we develop
the end-to-end ultra HD video live system, called 360TEL [1], which supports video encoding/decoding mode switch
(hardware or software coder), video resolution and other parameter configurations. In particular, we first buy an Insta360 panoramic camera (ONEX in our configuration), connect to our 5G smartphone, and then use the 360TEL
running on the smartphone to control the camera. At the receiver side, we run a pull-stream player (Aliplayer [7]
in our measurement) with RTMP standard support and watch the panoramic live video. As part of the end-to-end
video streaming, we build a processing module on the server, acting as a video relaying sever. In particular, we
deploy an EasyDSS platform [8] on the HUAWEI cloud [9] for the video relaying. We will release the code that we
write over the Insta360 API, but we cannot share the API library, due to a confidentiality agreement with Insta360.
However, anyone can apply to obtain the API library, by requiring the development permission from Insta360 [6].

## 360TEL
pwrStrip is a lightweight smartphone energy consumption monitoring tool. Given that the Linux kernel of
Android can record the power information (voltage now, current now), we read and analyze this information in a
10ms window. Specifically, we open Termux [10] (a Linux environment) and run the pwrStrip script, and then we
start measuring activities under the Termux process. After interrupting the pwrStrip process, we can get a complete
power trace file.


## References
[1] piaobozaizai, “5g-measurement-tools-and-dateset,” https://github.com/piaobozaizai/5G measurement, 2020.

[2] B. A. Mah, “iperf 3.7,” https://github.com/esnet/iperf/releases/tag/3.7, 2019.

[3] W. org., “Wireshark.” https://www.wireshark.org, 2019.

[4] amatsuda, “traceroute,” https://github.com/amatsuda/traceroute, 2018.

[5] X. org., “Xcal,” https://accuver.com, 2019.

[6] I. team, “Insta360 onex api.” https://www.insta360.com/download/insta360-onex, 2019.

[7] Tinywan, “A rtmp player,” https://github.com/Tinywan/html5-dash-hls-rtmp, 2018.

[8] Babosa, “An open rtmp server,” https://github.com/EasyDSS/EasyDSS, 2019.

[9] H. org., “Huawei cloud,” https://www.huaweicloud.com, 2019.

[10] T. org., “Termux app.” https://github.com/termux/termux-app, 2019.
