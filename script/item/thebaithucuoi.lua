Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	local thucuoi = random(30148,30151);
	DelItem(2,1,50006,1);
	AddItem(0,105,thucuoi,1,1,7,403,7,-1,7,-1,7,0);
	Talk(1,"","Tri�u h�i th�nh c�ng, mau xem l� th� c��i g�");
end