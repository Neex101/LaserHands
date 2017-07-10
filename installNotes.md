# LaserHands

LaserHands setup notes

For: RasPi3 + touchscreen

Use KivyPie distro

Install bluetooth
sudo apt-get install bluetooth bluez blueman
sudo reboot

Install cwiid
sudo apt-get install python-cwiid

Check connection (optional)
wget https://sites.google.com/site/brianhensleyfiles/wiimotetest.py
sudo python wiimotetest.py
(Note: press ‘+’ on wiimiote to quit test program)

Enable SPI-DEV
git clone git://github.com/doceme/py-spidev
cd py-spidev/
sudo python setup.py install
Edit /boot/config.txt and add:
dtparam=spi=on
reboot to activate
