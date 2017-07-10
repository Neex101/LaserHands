# Ed Sells
# Read installNotes for detail on how to setup hardware and distribution base

import kivy # @UnusedImport

from kivy.app import App
from kivy.lang import Builder
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.uix.scrollview import ScrollView
from kivy.clock import Clock
from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty, NumericProperty, StringProperty # @UnresolvedImport

import spidev # @UnresolvedImport
import cwiid # @UnresolvedImport


Builder.load_string("""

<ScrollableLabel>:
    Label:
        size_hint_y: None
        height: self.texture_size[1]
        text_size: self.width, None
        text: root.text
 
<HomeScreen>:
     
    GridLayout:
        cols: 2
        orientation: 'vertical'
        padding: 20
        spacing: 10
         
        Image:
            source: 'logo.png'
        Button:
            text: 'Connect'
            on_press: 
                root.manager.transition.direction = 'left'
                root.manager.current = 'connect'
        Button:
            text: 'Settings'
            on_press: 
                root.manager.transition.direction = 'left'
                root.manager.current = 'settings'
        Button:
            text: 'Go live'
            on_press: 
                root.manager.transition.direction = 'left'
                root.manager.current = 'live'
 
<ConnectScreen>:
  
    scrolltext:scrolltext 
  
    GridLayout:
        cols: 2
        orientation: 'vertical'
        padding: 20
        spacing: 10
          
        Button:
            text: 'Dial'
            on_press: 
                root.dial()
        ScrollableLabel:
            id: scrolltext
            text: root.consoleOutputInitial
        Button:
            text: 'Blink'
            on_press: 
                root.blink()
        Button:
            text: 'Quit'
            on_press: 
                root.manager.transition.direction = 'right'
                root.manager.current = 'home'
              
<SettingsScreen>:
      
    GridLayout:
        cols: 1
        orientation: 'vertical'
        padding: 20
        spacing: 10
  
        Button:
            text: 'Quit'
            on_press: 
                root.manager.transition.direction = 'right'
                root.manager.current = 'home'
 
<PongBall>:
 
    size: 50, 50 
    
    canvas:
        Ellipse:
            size: [20, 20]
            pos: [self.center_x - 20/2, self.center_y - 20/2]
             
<LiveScreen>:
     
    ball1: ball1
    ball2: ball2
    xy_label: xy_label

    PongBall:
        id: ball1
        center: self.parent.center 
        
    PongBall:
        id: ball2
        center: self.parent.center 
          
    BoxLayout:
        orientation: "horizontal"
        Button:
            id:one
            text: "Listen!"
            background_color: 0,0,0,1
            font_size:32
            size_hint:1,None
            on_press: root.listen()
     
        Button:
            id:two      
            text: "Quit"
            background_color: 1,1.5,0,1
            font_size:32
            size_hint:1,None
            on_press: 
                root.manager.transition.direction = 'right'
                root.manager.current = 'home'

        Button:
            id: xy_label      
            text: root.xytext
            background_color: 0,0,0,1
            font_size:32
            size_hint:1,None
             
""")

# Widget
class ScrollableLabel(ScrollView):

    text = StringProperty('')

class PongBall(Widget):

    x = NumericProperty(0)
    y = NumericProperty(0)


# Declare all screens
class HomeScreen(Screen):
    
    pass

class ConnectScreen(Screen):
    
    consoleOutputInital = StringProperty()
    consoleOutputInitial = "Hello\n"
    
    # On button press...
    def dial(self):
        self.scrolltext.text += "Press button 1 + 2 on remote now...\n"
        Clock.schedule_once(lambda dt: self.delayDial(), 2)

    def delayDial(self):
        global wm
        wm = cwiid.Wiimote()
        self.scrolltext.text += "Connected :-)\n"
        
    def blink(self):
        global wm
        self.scrolltext.text += 'Blink requested...\n'
        self.ledOn()
        Clock.schedule_once(lambda dt: self.ledOff(), 2)
        
    def ledOn(self):
        global wm
        wm.led = 1

    def ledOff(self):
        global wm
        wm.led = 0
     
class SettingsScreen(Screen):
    
    pass

class LiveScreen(Screen):
    
    ball1 = ObjectProperty(None)
    ball2 = ObjectProperty(None)
    
    xytext = StringProperty()
    xytext = "Initial"
    
    spi1 = spidev.SpiDev()
    spi1.open(0,0)
     
    spi2 = spidev.SpiDev()
    spi2.open(0,1)
     
    def setOutputX(self, val):
        # lowbyte has 8 data bits D0..D7
        lowByte = val & 0xff; # 0b 1111 1111
        # highbyte has control and data bits
        # control bits are:
        # B7, B6,   B5, B4,     B3,  B2,  B1,  B0
        # W  ,BUF, !GA, !SHDN,  B11,  B10,  B9,  B8
        # B7=0:write to DAC, B6=0:unbuffered, B5=1:Gain=1X, B4=1:Output is active
        highByte = ((val >> 8) & 0xff) | 0b0 << 7 | 0b0 << 6 | 0b1 << 5 | 0b1 << 4;
        # by using spi.xfer2(), the CS is released after each block, transferring the
        # value to the output pin.
        self.spi1.xfer2([highByte, lowByte])
        
    def setOutputY(self, val):
        # lowbyte has 8 data bits D0..D7
        lowByte = val & 0xff; # 0b 1111 1111
        # highbyte has control and data bits
        # control bits are:
        # B7, B6,   B5, B4,     B3,  B2,  B1,  B0
        # W  ,BUF, !GA, !SHDN,  B11,  B10,  B9,  B8
        # B7=0:write to DAC, B6=0:unbuffered, B5=1:Gain=1X, B4=1:Output is active
        highByte = ((val >> 8) & 0xff) | 0b0 << 7 | 0b0 << 6 | 0b1 << 5 | 0b1 << 4;
        # by using spi.xfer2(), the CS is released after each block, transferring the
        # value to the output pin.
        self.spi2.xfer2([highByte, lowByte])
    
    def listen(self):
        
        global wm

#       Spec WiiMote streaming input format, example:  wm.rpt_mode = cwiid.RPT_ACC | cwiid.RPT_IR
        wm.rpt_mode = cwiid.RPT_IR

        Clock.schedule_interval(self.update, 1.0 / 50.0)

    def update(self, dt):
        
        global wm
        
        pos1Dict = wm.state['ir_src'][0]
        pos2Dict = wm.state['ir_src'][1]
        
        if type(pos1Dict) is dict:
            x1 = pos1Dict['pos'][0]
            y1 = pos1Dict['pos'][1]
        else:
            # Wii range = X:0-1010 Y:0-750
            x1 = 505
            y1 = 375

        if type(pos2Dict) is dict:
            x2 = pos2Dict['pos'][0]
            y2 = pos2Dict['pos'][1]
        else:
            x2 = 505
            y2 = 375
    
        # Screen adjustment for RPi touchscreen @ X:0-800 Y:480
        x1 = ((x1 * 0.8) - 400) * -1
        y1 = (y1 * 0.64) - 240

        # Screen adjustment for RPi touchscreen @ X:+/-400 Y:+/-240
        x2 = ((x2 * 0.8) - 400) * -1
        y2 = (y2 * 0.64) - 240
        
        # Label on screen displaying co-ords
#         self.xy_label.text = "X1: " + str(x1) + "  Y1: " + str(y1)
        
        self.ball1.x = x1
        self.ball1.y = y1
        self.ball2.x = x2
        self.ball2.y = y2
        
        #MCP4921 DAC range: 0-4095
        dacX1 = int(((x1 + 400)/810) * 4095)
        dacY1 = int(((y1 + 240)/490) * 4095)
        
        dacX2 = int(((x2 + 400)/810) * 4095)
        dacY2 = int(((y2 + 240)/490) * 4095)
        
        self.setOutputX(dacX1)
        self.setOutputY(dacY1)
        
        # Delay is half that of the delay between update calls to ensure that beam has equal time at both points
        Clock.schedule_once(lambda dt: self.setOutputX(dacX2), 1.0/25.0)
        Clock.schedule_once(lambda dt: self.setOutputY(dacY2), 1.0/25.0)



class WiiMote():
    
    # Empty to class to initialise the global object... needed?
    
    pass

# Create the screen manager
sm = ScreenManager()
sm.add_widget(HomeScreen(name='home'))
sm.add_widget(SettingsScreen(name='settings'))
sm.add_widget(ConnectScreen(name='connect'))
sm.add_widget(LiveScreen(name='live'))
wm = WiiMote()

class LaserHandsApp(App):

    def build(self):
        return sm

if __name__ == '__main__':
    LaserHandsApp().run()