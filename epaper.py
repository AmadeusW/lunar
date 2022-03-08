from papirus import PapirusImage
from papirus import PapirusComposite
import time

compo = PapirusComposite(False)
compo.AddImg("out/150.bmp", 0, 0, (170,96), "moon")
compo.WriteAll()
time.sleep(2)
for i in range(20, 366, 10):
    filename = f"out/{i:03}.bmp"
    print(f"Opening {filename}")
    compo.UpdateImg("moon", filename)
    compo.WriteAll(True)


compo.AddImg("out/150.bmp", 0, 0, (170,96), "moon22")
compo.WriteAll()

