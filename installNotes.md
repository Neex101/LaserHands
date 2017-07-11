# LaserHands

LaserHands setup notes

For: RasPi3 + touchscreen

Use KivyPie distro

Install cwiid:
sudo apt-get install python-cwiid

Install bluetooth:
sudo apt-get install pi-bluetooth
("Y" when prompted to overwrite)

Reboot:
sudo reboot

Check connection (optional):
wget https://sites.google.com/site/brianhensleyfiles/wiimotetest.py
sudo python wiimotetest.py
(Note: press ‘+’ on wiimiote to quit test program)

Enable SPI-DEV library:
git clone git://github.com/doceme/py-spidev
cd py-spidev/
sudo python setup.py install

Enable SPI pins:
sudo nano /boot/config.txt
... and add:
dtparam=spi=on

Reboot:
reboot to activate
