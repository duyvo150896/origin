Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\vng\\lib\\vnglib_textdata.lua") 
Include("\\settings\\static_script\\cheat\\gm_item_tifuzhiyin.lua")

function main()

	local szName = "Chñ tiÒn trang"
	local szHeader = "<color=green>"..szName.." :<color>C¸c h¹ muèn ch¬i g×"
	local tbSayDialog = {};
	local nSaySize = 0;

	tinsert(tbSayDialog, "Rót Kim PhiÕu Vµo Game/RutKimPhieu")

	tinsert(tbSayDialog, "Ta chØ ghÐ ngang/nothing")
	Say(szHeader, getn(tbSayDialog), tbSayDialog)
	

end
------------------------------------------------------------------------------------------
function nothing()
end

---------------------------------------------------------------------------------
