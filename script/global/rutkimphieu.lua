Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\vng\\lib\\vnglib_textdata.lua") 
Include("\\settings\\static_script\\cheat\\gm_item_tifuzhiyin.lua")

function main()

	local szName = "Ch� ti�n trang"
	local szHeader = "<color=green>"..szName.." :<color>C�c h� mu�n ch�i g�"
	local tbSayDialog = {};
	local nSaySize = 0;

	tinsert(tbSayDialog, "R�t Kim Phi�u V�o Game/RutKimPhieu")

	tinsert(tbSayDialog, "Ta ch� gh� ngang/nothing")
	Say(szHeader, getn(tbSayDialog), tbSayDialog)
	

end
------------------------------------------------------------------------------------------
function nothing()
end

---------------------------------------------------------------------------------
