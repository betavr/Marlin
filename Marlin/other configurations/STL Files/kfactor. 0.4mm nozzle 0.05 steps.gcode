; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Created: Fri Feb 01 2019 19:49:58 GMT-0500 (Eastern Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 200 °C
; Bed Temperature = 60 °C
; Retraction Distance = 3 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 240 mm
; Bed Size Y = 230 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1800 mm/min
; Fast Printing Speed = 3600 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1500 mm/min
; Printing Acceleration = 800 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.5
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S200 ; set nozzle temperature but do not wait
M190 S60 ; set bed temperature and wait
M109 S200 ; block waiting for nozzle temp
G28 ; home all axes with heated bed
G21 ; set units to millimeters
M204 P800 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X120 Y115 F7200 ; move to start
G1 Z0.2 F1800 ; move to layer height
;
; prime nozzle
;
G1 X71 Y77.5 F7200 ; move to start
G1 X71 Y152.5 E7.4835 F1800 ; print line
G1 X71.72 Y152.5 F7200 ; move to start
G1 X71.72 Y77.5 E7.4835 F1800 ; print line
G1 E-3 F1500 ; retract
;
; print anchor frame
;
G1 X81 Y74.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X81 Y130.5 E2.4586 F1800 ; print line
G1 X81.48 Y130.5 F7200 ; move to start
G1 X81.48 Y74.5 E2.4586 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X161 Y74.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X161 Y130.5 E2.4586 F1800 ; print line
G1 X160.52 Y130.5 F7200 ; move to start
G1 X160.52 Y74.5 E2.4586 F1800 ; print line
G1 E-3 F1500 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X81 Y77.5 F7200 ; move to start
M900 K0 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y77.5 E0.7982 F1800 ; print line
G1 X141 Y77.5 E1.5965 F3600 ; print line
G1 X161 Y77.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y82.5 F7200 ; move to start
M900 K0.05 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y82.5 E0.7982 F1800 ; print line
G1 X141 Y82.5 E1.5965 F3600 ; print line
G1 X161 Y82.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y87.5 F7200 ; move to start
M900 K0.1 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y87.5 E0.7982 F1800 ; print line
G1 X141 Y87.5 E1.5965 F3600 ; print line
G1 X161 Y87.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y92.5 F7200 ; move to start
M900 K0.15 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y92.5 E0.7982 F1800 ; print line
G1 X141 Y92.5 E1.5965 F3600 ; print line
G1 X161 Y92.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y97.5 F7200 ; move to start
M900 K0.2 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y97.5 E0.7982 F1800 ; print line
G1 X141 Y97.5 E1.5965 F3600 ; print line
G1 X161 Y97.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y102.5 F7200 ; move to start
M900 K0.25 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y102.5 E0.7982 F1800 ; print line
G1 X141 Y102.5 E1.5965 F3600 ; print line
G1 X161 Y102.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y107.5 F7200 ; move to start
M900 K0.3 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y107.5 E0.7982 F1800 ; print line
G1 X141 Y107.5 E1.5965 F3600 ; print line
G1 X161 Y107.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y112.5 F7200 ; move to start
M900 K0.35 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y112.5 E0.7982 F1800 ; print line
G1 X141 Y112.5 E1.5965 F3600 ; print line
G1 X161 Y112.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y117.5 F7200 ; move to start
M900 K0.4 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y117.5 E0.7982 F1800 ; print line
G1 X141 Y117.5 E1.5965 F3600 ; print line
G1 X161 Y117.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y122.5 F7200 ; move to start
M900 K0.45 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y122.5 E0.7982 F1800 ; print line
G1 X141 Y122.5 E1.5965 F3600 ; print line
G1 X161 Y122.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y127.5 F7200 ; move to start
M900 K0.5 ; set K-factor
G1 E3 F1500 ; un-retract
G1 X101 Y127.5 E0.7982 F1800 ; print line
G1 X141 Y127.5 E1.5965 F3600 ; print line
G1 X161 Y127.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X81 Y132.5 F7200 ; move to start
;
; mark the test area for reference
;
M900 K0 ; set K-factor 0
G1 X101 Y132.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X101 Y152.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 X141 Y132.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X141 Y152.5 E0.7982 F1800 ; print line
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
;
; print K-values
;
G1 X163 Y75.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y75.5 E0.0798 F1800 ; 0
G1 X165 Y77.5 E0.0798 F1800 ; 0
G1 X165 Y79.5 E0.0798 F1800 ; 0
G1 X163 Y79.5 E0.0798 F1800 ; 0
G1 X163 Y77.5 E0.0798 F1800 ; 0
G1 X163 Y75.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
G1 X163 Y85.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y85.5 E0.0798 F1800 ; 0
G1 X165 Y87.5 E0.0798 F1800 ; 0
G1 X165 Y89.5 E0.0798 F1800 ; 0
G1 X163 Y89.5 E0.0798 F1800 ; 0
G1 X163 Y87.5 E0.0798 F1800 ; 0
G1 X163 Y85.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 X166 Y85.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X166 Y85.9 E0.016 F1800 ; dot
G1 E-3 F1500 ; retract
G1 X167 Y85.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X167 Y87.5 E0.0798 F1800 ; 1
G1 X167 Y89.5 E0.0798 F1800 ; 1
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
G1 X163 Y95.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y95.5 E0.0798 F1800 ; 0
G1 X165 Y97.5 E0.0798 F1800 ; 0
G1 X165 Y99.5 E0.0798 F1800 ; 0
G1 X163 Y99.5 E0.0798 F1800 ; 0
G1 X163 Y97.5 E0.0798 F1800 ; 0
G1 X163 Y95.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 X166 Y95.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X166 Y95.9 E0.016 F1800 ; dot
G1 E-3 F1500 ; retract
G1 X167 Y95.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X167 Y97.5 F7200 ; move to start
G1 X167 Y99.5 F7200 ; move to start
G1 X169 Y99.5 E0.0798 F1800 ; 2
G1 X169 Y97.5 E0.0798 F1800 ; 2
G1 X167 Y97.5 E0.0798 F1800 ; 2
G1 X167 Y95.5 E0.0798 F1800 ; 2
G1 X169 Y95.5 E0.0798 F1800 ; 2
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
G1 X163 Y105.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y105.5 E0.0798 F1800 ; 0
G1 X165 Y107.5 E0.0798 F1800 ; 0
G1 X165 Y109.5 E0.0798 F1800 ; 0
G1 X163 Y109.5 E0.0798 F1800 ; 0
G1 X163 Y107.5 E0.0798 F1800 ; 0
G1 X163 Y105.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 X166 Y105.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X166 Y105.9 E0.016 F1800 ; dot
G1 E-3 F1500 ; retract
G1 X167 Y105.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X167 Y107.5 F7200 ; move to start
G1 X167 Y109.5 F7200 ; move to start
G1 X169 Y109.5 E0.0798 F1800 ; 3
G1 X169 Y107.5 E0.0798 F1800 ; 3
G1 X169 Y105.5 E0.0798 F1800 ; 3
G1 X167 Y105.5 E0.0798 F1800 ; 3
G1 X167 Y107.5 F7200 ; move to start
G1 X169 Y107.5 E0.0798 F1800 ; 3
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
G1 X163 Y115.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y115.5 E0.0798 F1800 ; 0
G1 X165 Y117.5 E0.0798 F1800 ; 0
G1 X165 Y119.5 E0.0798 F1800 ; 0
G1 X163 Y119.5 E0.0798 F1800 ; 0
G1 X163 Y117.5 E0.0798 F1800 ; 0
G1 X163 Y115.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 X166 Y115.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X166 Y115.9 E0.016 F1800 ; dot
G1 E-3 F1500 ; retract
G1 X167 Y115.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X167 Y117.5 F7200 ; move to start
G1 X167 Y119.5 F7200 ; move to start
G1 X167 Y117.5 E0.0798 F1800 ; 4
G1 X169 Y117.5 E0.0798 F1800 ; 4
G1 X169 Y119.5 F7200 ; move to start
G1 X169 Y117.5 E0.0798 F1800 ; 4
G1 X169 Y115.5 E0.0798 F1800 ; 4
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
G1 X163 Y125.5 F7200 ; move to start
G1 Z0.2 F1800 ; zHop
G1 E3 F1500 ; un-retract
G1 X165 Y125.5 E0.0798 F1800 ; 0
G1 X165 Y127.5 E0.0798 F1800 ; 0
G1 X165 Y129.5 E0.0798 F1800 ; 0
G1 X163 Y129.5 E0.0798 F1800 ; 0
G1 X163 Y127.5 E0.0798 F1800 ; 0
G1 X163 Y125.5 E0.0798 F1800 ; 0
G1 E-3 F1500 ; retract
G1 X166 Y125.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X166 Y125.9 E0.016 F1800 ; dot
G1 E-3 F1500 ; retract
G1 X167 Y125.5 F7200 ; move to start
G1 E3 F1500 ; un-retract
G1 X169 Y125.5 E0.0798 F1800 ; 5
G1 X169 Y127.5 E0.0798 F1800 ; 5
G1 X167 Y127.5 E0.0798 F1800 ; 5
G1 X167 Y129.5 E0.0798 F1800 ; 5
G1 X169 Y129.5 E0.0798 F1800 ; 5
G1 E-3 F1500 ; retract
G1 Z0.3 F1800 ; zHop
;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X240 Y230 F7200 ; move away from the print
M84 ; disable motors
M502 ; resets parameters from ROM
M501 ; resets parameters from EEPROM
;