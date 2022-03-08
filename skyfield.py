from skyfield.api import load
from skyfield.almanac import moon_phase
import skyfield

print(skyfield.VERSION)
ts = load.timescale()
t = ts.now()
ephemeris = load('./de421.bsp')
print(moon_phase(ephemeris, t).degrees)

