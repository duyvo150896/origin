--宋方后营Trap点触发的脚本
Include("\\script\\battles\\butcher\\head.lua")


function main()
	--如果处于报名阶段时,玩家不能走到对方的领地中去，所以会将玩家扔到大营内
		if(GetCurCamp() == 1) then
			if( GetFightState() == 1) then
				print("hometrap1  hometrap1  hometrap1  hometrap1  GetFightState() == 1  GetCurCamp() == 1")
				SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1))
				SetFightState(0)
			else
				RestTime =  GetGameTime() - BT_GetData(PL_LASTDEATHTIME) 
				if ( RestTime < TIME_PLAYER_REV) then
					Say((TIME_PLAYER_REV - RestTime) .. " gi﹜ sau m韎 v祇 頲 chi課 trng. Tng s�! Xin ng n鉵g l遪g!", 0)
				else
					file = GetMissionS(1)
					x,y = bt_getadata(file)
					print("hometrap1  hometrap1  hometrap1  hometrap1  RestTime >= TIME_PLAYER_REV and GetFightState() ~= 1  GetCurCamp() == 1")
					SetPos(floor(x/32), floor(y/32))
					SetFightState(1)
					SetTempRevPos(SubWorldIdx2ID(SubWorld) , GetMissionV(MS_HOMEIN_X1) * 32, GetMissionV(MS_HOMEIN_Y1) * 32);
				end
			end;
		elseif (GetCurCamp() == 2) then
			print("hometrap1  hometrap1  hometrap1  hometrap1  GetCurCamp() == 1")
			file = GetMissionS(1)
			x,y = bt_getadata(file)
			SetPos(floor(x/32), floor(y/32))
			Msg2Player("Trc khi khai chi課, t蕋 c� tng s� kh玭g 頲 t� � r阨 kh醝 qu﹏ doanh c馻 m譶h! H穣 i l骳 khai chi課 gi誸 gi芻 l藀 c玭g!")
			SetFightState(1)
		end;
end;


