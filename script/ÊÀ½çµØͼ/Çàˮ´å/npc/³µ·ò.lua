
-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 收耕地图车夫脚本
-- Edited by 刘宇宁
-- 2005/08/26 

-- 2005/9/14，孟凡修改 青水

-- ======================================================


function main()
	local selTab = {
				"Gi韎 thi謚 khu v鵦 b秐 /jieshao",
				"R阨 kh醝 khu v鵦 thu th藀/leave",
				"дn L﹎ Nh筩 Th玭 (cao c蕄)/#NewWorld(723,1700,3448)",
				"дn Doanh D﹏ Th玭 (trung c蕄)/#NewWorld(718,1708,3405)",
				"K誸 th骳 i tho筰/no",
				}
	Say("Mu鑞 canh t竎 �? Ch� c莕 d飊g Th莕 N玭g Кn a n khu v鵦 tng 鴑g sau  d飊g k� n╪g canh t竎",getn(selTab),selTab)
end;

function leave()
	local selTab = {
				"Th祅h Й/#NewWorld(300, 1681 ,3464)",
				"Bi謓 Kinh/#NewWorld(200, 1249 ,2732)",
				"Tuy襫 Ch﹗/#NewWorld(100,1377,3051)",
				"Th祅h Й Чi Kho竛g C玭g (o kho竛g)/#NewWorld(300,1836,3430)",
				"Th祅h Й Ho祅g Чi Th萴 (K衞 t�)/#NewWorld(300,1848,3493)",
				"Bi謓 Kinh th� s╪ Trng (Thu閏 da)/#NewWorld(200,1347,3029)",
				"Tuy襫 Ch﹗ M筩 Qu﹏ Чo trng (T藀 linh)/#NewWorld(100,1393,2969)",
				"Tuy襫 Ch﹗ L﹎ Dc S� (H竔 thu鑓)/#NewWorld(100,1555,2961)",
				"Bi謓 Kinh L璾 Nh蕋 Ph� (цn g�)/#NewWorld(200,1220,2909)",
				"Kh玭g 甶 u c�!/no",
				}
	Say("G莕 y l祅g ta m璦 thu薾 gi� h遖, thu ho筩h ng祔 c祅g 頲 m颽. Ngi n canh t竎 l� lt, xa phu ta c騨g ph秈 t蕋 b藅 ng祔 m! Kh竎h quan mu鑞 n n琲 n祇?",getn(selTab),selTab)	
end;


function jieshao()
	Say("Thanh Th駓 th玭 l� khu v鵦 canh t竎 s� c蕄. B猲 tr竔 ph輆 tr猲 c� m鋍 nhi襲 <color=yellow>Quang Th玭g Ma v� M閏 nh� c蕄 1<color>, b猲 ph秈 l� <color=yellow>Khuynh ly u v� Th筩h khu萵 c蕄 2<color>. B猲 tr竔 ph輆 di m鋍 y <color=yellow>Nhi評 minh u c蕄 3, M╪g tr骳<color>, b猲 ph秈 l� <color=yellow>Dung tr筩h c鑓, H� Ti猽 c蕄 4<color>.",0)
end;


function no()
end;


