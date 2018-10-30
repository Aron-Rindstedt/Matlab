% Marks New interpolation operators
% 6th order accurate (diagonal norm) 
% M=19 is the minimum amount of points on the coarse mesh

function [I1,I2] = Interpolation_8(M_C)

M_F=M_C*2-1;

% Coarse to fine
I1=zeros(M_F,M_C);

t1=    [0.99340647972821530406e0 0.26374081087138783775e-1 -0.39561121630708175663e-1 0.26374081087138783775e-1 -0.65935202717846959438e-2 0 0 0 0 0 0 0 0 0 0 0; 0.31183959860287729600e0 0.94014160558849081601e0 -0.31646240838273622401e0 0.65141605588490816007e-1 -0.66040139712270400169e-3 0 0 0 0 0 0 0 0 0 0 0; -0.33163591467432411328e-1 0.11092588191512759415e1 -0.10539936193077965253e0 -0.77189144409925778387e-2 0.60418595406382404105e-1 -0.23395546718453703858e-1 0 0 0 0 0 0 0 0 0 0; -0.63951987538041216890e-1 0.56657207530367360435e0 0.56073157416571775151e0 -0.67107298938782711711e-1 0.54915118559238359570e-2 -0.17358748484912632117e-2 0 0 0 0 0 0 0 0 0 0; 0.22970968995770386894e0 -0.84424237330911973043e0 0.20693327723706358111e1 -0.42910115554542331920e0 -0.13191478386190563918e0 0.11675567167691342983e0 -0.10539821288804421121e-1 0 0 0 0 0 0 0 0 0; 0.10195433776615307267e0 -0.45344410547614678949e0 0.11049699103276728065e1 0.26297465812771521534e0 -0.38617448080010680341e-1 0.23925781250000000000e-1 -0.17631339153836246986e-2 0 0 0 0 0 0 0 0 0; -0.33882356049961665258e0 0.12718893449497745294e1 -0.16822328941798626751e1 0.17813590728082409984e1 0.11793036905675500906e0 -0.18266200597575250398e0 0.37689938246258754051e-1 -0.51502644057974593120e-2 0 0 0 0 0 0 0 0; -0.50400650482311136546e0 0.19901277318227816880e1 -0.29708252195230746436e1 0.23722122500767090037e1 0.24457622727717445252e0 -0.15152936311741758892e0 0.21886284536938453771e-1 -0.24414062500000000000e-2 0 0 0 0 0 0 0 0; 0.37882732714731866331e-2 0.12115606818363056270e0 -0.53924884156527999826e0 0.88886598075786086512e0 0.27660232216640139169e0 0.33730204543181760125e0 -0.12179633685076087365e0 0.38041730885639608773e-1 -0.47112422807823442564e-2 0 0 0 0 0 0 0; 0.41123781086486062886e0 -0.14418811327145423418e1 0.16793759240044487847e1 -0.57156511000645013503e0 0.24685906775203751929e0 0.76471858554416232639e0 -0.11045284035765094522e0 0.24149101163134162809e-1 -0.24414062500000000000e-2 0 0 0 0 0 0 0; 0.36463669929508579110e0 -0.13698743320477484358e1 0.18268133133896437122e1 -0.93074264690533336964e0 0.10888458847499176143e0 0.85685706622610101431e0 0.24359267370152174731e0 -0.13314605809973863070e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0 0 0 0 0 0; 0.25541802394537278164e0 -0.10497853549910180363e1 0.15921730465359157986e1 -0.96615555845660927855e0 -0.49371813550407503858e-1 0.76471858554416232639e0 0.55226420178825472608e0 -0.12074550581567081404e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0 0 0 0 0 0; -0.93469656691661424206e-1 0.26634337856674539612e0 -0.17694629839462736800e0 -0.64947940656920645005e-1 -0.54442294237495880713e-1 0.33730204543181760125e0 0.61880473767909428853e0 0.26629211619947726141e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0 0 0 0 0; -0.49445400002561969522e0 0.18168098496802059221e1 -0.23462477366129557292e1 0.11091140417405116705e1 0.98743627100815007716e-2 -0.15294371710883246528e0 0.55226420178825472608e0 0.60372752907835407022e0 -0.11962890625000000000e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0 0 0 0 0; -0.24633538738293361369e0 0.93021448723433316305e0 -0.12527182680719820488e1 0.63698038058706249354e0 0.15554941210713108775e-1 -0.16865102271590880063e0 0.24359267370152174731e0 0.67646871560981190145e0 0.26382956772381127836e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0 0 0 0; 0.23150628239599695492e0 -0.82682792555928440531e0 0.10237569354829334077e1 -0.45129113643047460593e0 -0.10075880316409694665e-2 0.30588743421766493056e-1 -0.11045284035765094522e0 0.60372752907835407022e0 0.59814453125000000000e0 -0.11962890625000000000e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0 0 0 0; 0.19518658723021413499e0 -0.70515100787561674409e0 0.88870680011413432419e0 -0.40458631782898657259e0 -0.19443676513391385969e-2 0.48186006490259657322e-1 -0.12179633685076087365e0 0.26629211619947726141e0 0.67021304034523590205e0 0.26382956772381127836e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0 0 0; -0.43403699494753775353e-1 0.15442805550926787092e0 -0.18997683853068679729e0 0.82584189359473172950e-1 0 -0.31213003491598462302e-2 0.22090568071530189043e-1 -0.12074550581567081404e0 0.59814453125000000000e0 0.59814453125000000000e0 -0.11962890625000000000e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0 0 0; -0.58783367481931040778e-1 0.20994477957758583150e0 -0.25976152530269196017e0 0.11403438083569734975e0 0 -0.60232508112824571652e-2 0.34798953385931678187e-1 -0.13314605809973863070e0 0.26382956772381127836e0 0.67021304034523590205e0 0.26382956772381127836e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0 0; 0.63390647713259204145e-2 -0.22373993350504987875e-1 0.27185871992161665013e-1 -0.11561529976981026786e-1 0 0 -0.22541395991357335758e-2 0.24149101163134162809e-1 -0.11962890625000000000e0 0.59814453125000000000e0 0.59814453125000000000e0 -0.11962890625000000000e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0 0; 0.10649583863025939259e-1 -0.37634916628131671889e-1 0.45812371547331598336e-1 -0.19540204529147604911e-1 0 0 -0.43498691732414597734e-2 0.38041730885639608773e-1 -0.13191478386190563918e0 0.26382956772381127836e0 0.67021304034523590205e0 0.26382956772381127836e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2 0; -0.45575492476359756866e-3 0.15951422366725914903e-2 -0.19141706840071097884e-2 0.79757111833629574515e-3 0 0 0 -0.24641939962381798784e-2 0.23925781250000000000e-1 -0.11962890625000000000e0 0.59814453125000000000e0 0.59814453125000000000e0 -0.11962890625000000000e0 0.23925781250000000000e-1 -0.24414062500000000000e-2 0; -0.87948159845213680356e-3 0.30781855945824788125e-2 -0.36938227134989745750e-2 0.15390927972912394062e-2 0 0 0 -0.47552163607049510966e-2 0.37689938246258754051e-1 -0.13191478386190563918e0 0.26382956772381127836e0 0.67021304034523590205e0 0.26382956772381127836e0 -0.13191478386190563918e0 0.37689938246258754051e-1 -0.47112422807823442564e-2;];

  
  t2=  [-0.456778318652801649905139026187255979136056340856723240855601037075101451671715366e81 / 0.96954962498118328965695036971472316719781487805298788537830810438965808195608854955e83 0.3654226549222413199241112209498047833088450726853785926844808296600811613373722928e82 / 0.96954962498118328965695036971472316719781487805298788537830810438965808195608854955e83 -0.1827113274611206599620556104749023916544225363426892963422404148300405806686861464e82 / 0.13850708928302618423670719567353188102825926829328398362547258634137972599372693565e83 0.3654226549222413199241112209498047833088450726853785926844808296600811613373722928e82 / 0.13850708928302618423670719567353188102825926829328398362547258634137972599372693565e83 0.1856585148354920384923865861096125662293072684152233190798249652677391616531107981e82 / 0.2770141785660523684734143913470637620565185365865679672509451726827594519874538713e82 0.3654226549222413199241112209498047833088450726853785926844808296600811613373722928e82 / 0.13850708928302618423670719567353188102825926829328398362547258634137972599372693565e83 -0.1827113274611206599620556104749023916544225363426892963422404148300405806686861464e82 / 0.13850708928302618423670719567353188102825926829328398362547258634137972599372693565e83 0.3654226549222413199241112209498047833088450726853785926844808296600811613373722928e82 / 0.96954962498118328965695036971472316719781487805298788537830810438965808195608854955e83 -0.456778318652801649905139026187255979136056340856723240855601037075101451671715366e81 / 0.96954962498118328965695036971472316719781487805298788537830810438965808195608854955e83;];

  t3=  [-0.5e1 / 0.2048e4 0.49e2 / 0.2048e4 -0.245e3 / 0.2048e4 0.1225e4 / 0.2048e4 0.1225e4 / 0.2048e4 -0.245e3 / 0.2048e4 0.49e2 / 0.2048e4 -0.5e1 / 0.2048e4;];
I1(1:23,1:16)=t1;
I1(M_F-22:M_F,M_C-15:M_C)=fliplr(flipud(t1));
I1(24,9:16)=t3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=25:2:M_F-24
    j=(i-3)/2;
    I1(i,j-2:j+6)=t2;
    I1(i+1,j-1:j+6)=t3;
end

% Fine to coarse: A
I2=zeros(M_C,M_F);

t1=[0.49670323986410765203e0 0.80670591743192512511e0 -0.14476656476698073533e-1 -0.19497555250083395132e0 0.16074268813765884450e0 0.22100911221277072755e0 -0.53042418939472250452e0 -0.86254139670456354517e0 0.64231825172866668299e-2 0.69727164011248914487e0 0.61825742343094006838e0 0.43307239695721032895e0 -0.15848187861199173328e0 -0.83836831742920925562e0 -0.41767239062238727391e0 0.39252899650233765024e0 0.33094736964907844809e0 -0.73592865087013788440e-1 -0.99669762780958210515e-1 0.10748160731101219580e-1 0.18056833808814782786e-1 -0.77275234787125894193e-3 -0.14911993994710636483e-2; 0.25487859584304862664e-2 0.47007080279424540800e0 0.93589176759289320118e-1 0.33386224041716468423e0 -0.11418395501435496457e0 -0.18998278818813064037e0 0.38484431284491986603e0 0.65828018436035862232e0 0.39704539050575728856e-1 -0.47252462545568042557e0 -0.44892698918501097924e0 -0.34402935194949605213e0 0.87284452472801643396e-1 0.59539401290875351190e0 0.30484430526276345964e0 -0.27096308216867871783e0 -0.23108785344796321535e0 0.50608234918774219796e-1 0.68801842319351676214e-1 -0.73322707316320135247e-2 -0.12333488857215226757e-1 0.52275043402033040521e-3 0.10087644967132781708e-2; -0.22656973277393401539e-1 -0.93771184228725468159e0 -0.52699680965389826267e-1 0.19581430555012001670e1 0.16586148101136731602e1 0.27435837109255836264e1 -0.30164708462284474624e1 -0.58235016129647971089e1 -0.10472767830023645070e1 0.32615209891555982371e1 0.35478595826728208891e1 0.30921640208240511054e1 -0.34364793368678654581e0 -0.45566547247355317663e1 -0.24329078834671892590e1 0.19882413967858906122e1 0.17259601262271516763e1 -0.36895458453625989435e0 -0.50448363278283993228e0 0.52797763052066775846e-1 0.88972343374038343284e-1 -0.37175165926095403240e-2 -0.71737841052106668688e-2; 0.21626748627943672418e-2 0.27636709246281031633e-1 -0.55259484658035070394e-3 -0.33553649469391355855e-1 -0.49244245327794891233e-1 0.93489376222103426899e-1 0.45734620580442859300e0 0.66579609152388478842e0 0.24716623315221892947e0 -0.15893464065423852815e0 -0.25881084331023040874e0 -0.26865808253702445366e0 -0.18060020510041282529e-1 0.30841043055726240020e0 0.17712461121229459766e0 -0.12549015561536110372e0 -0.11250298507032009025e0 0.22964117700293735857e-1 0.31709446610808019222e-1 -0.32149051440245356510e-2 -0.54335286230388551025e-2 0.22177994574852164638e-3 0.42797426992744435493e-3;];


  
 t2=[-0.23556211403911721282e-2 -0.12207031250000000000e-2 0.18844969123129377026e-1 0.11962890625000000000e-1 -0.65957391930952819589e-1 -0.59814453125000000000e-1 0.13191478386190563918e0 0.29907226562500000000e0 0.33510652017261795103e0 0.29907226562500000000e0 0.13191478386190563918e0 -0.59814453125000000000e-1 -0.65957391930952819589e-1 0.11962890625000000000e-1 0.18844969123129377026e-1 -0.12207031250000000000e-2 -0.23556211403911721282e-2;];

  
I2(1:4,1:23)=t1;      

I2(M_C-3:M_C,M_F-22:M_F)=fliplr(flipud(t1));

for i=5:M_C-4
    j=2*(i-5)+1;
    I2(i,j:j+16)=t2;
end
