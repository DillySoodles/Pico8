pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
function _init()
t=0

test={}

tail1={}

bw=0
end


function _update()

t+=1

circs=btn(4)
boom=btn(5)
//test[1]=circs

end


function _draw()
	cls()

 if circs then
 
 for w=0,64 do
  //fuck around with t for cool shit
  circ(64,64,w,(((t-w)%(8))==0) and 9 or 0)
 end
	
	end
	
	if boom then 
	bw+=1
	circfill(64,64,bw*4,7)
	if (bw>25) bw=0
	end

 	

	s=700
	for x=0,s do
  pset((x+t)%128,10*(sin((x/1000)))+50,3)
 end

	for x=0,s do
  pset((x-t)%128,10*(sin((x/1000)))+70,5)
 end
 
 //for x=0,s do
 // pset(10*(sin((x/80)))+70,(x-t)%128,15)
// end
 

	for x in all(test) do
		print(x,50,50,8)	
	end


end



__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000a0000000001175011750117501575015750157501a7501a7501a7501a750000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000c00000000000000000002275022750227502275022750000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 00014344

