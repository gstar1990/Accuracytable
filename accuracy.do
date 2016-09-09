cd C:\Users\~
#pls download accuracy1.dta through following link: https://www.dropbox.com/s/d2r1dde2q3dm6b3/accuracy1.zip?dl=0
use accuracy1.dta

replace waccuracy = -1*waccuracy
xi:areg wbias  pos1  lagwbias  i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa1
xi:areg wbias  neg1  lagwbias i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa2
xi:areg wbias  opt1  lagwbias   i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa3
xi:areg wbias  pos1 neg1  lagwbias   i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa4
xi:areg waccuracy  pos1  lagwaccuracy   i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa5
xi:areg waccuracy  neg1  lagwaccuracy i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa6
xi:areg waccuracy  posneg1  lagwaccuracy  i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa7
xi:areg waccuracy  pos1 neg1  lagwaccuracy  i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)
est store maa8
esttab maa1 maa2 maa3  maa5 maa6 maa7  using 201608Accuracy1.tex, nogaps replace t b(%10.5f) ar2 star (*  0.10  ** 0.05   *** 0.01)




xi:areg wbias  pos1  lagwbias wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa1
xi:areg wbias  neg1  lagwbias wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa2
xi:areg wbias  opt1  lagwbias wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa3
xi:areg wbias  pos1 neg1  lagwbias wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa4
xi:areg waccuracy  pos1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa5
xi:areg waccuracy  neg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa6
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa7
xi:areg waccuracy  pos1 neg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  rlexp rlfirmexp firm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 i  woverconfidence hardinfo i.fyear if horizon >3 & numaly >=4, a(cusip) cluster(cusip)
est store maa8
esttab maa1 maa2 maa3  maa5 maa6 maa7  using 201608Accuracy2.tex, nogaps replace t(2) b(3)   ar2 star (*  0.10  ** 0.05   *** 0.01)


 






*general experience
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & lexperience>=7.4, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & lexperience<7.4, a(cusip) cluster(cusip)

*firm experience
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & lfirmexp<6.91, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & lfirmexp>=6.91, a(cusip) cluster(cusip)


*rank
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & rank<=5, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & rank>5, a(cusip) cluster(cusip)


*firmcoverage
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & firm_cov<7, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & firm_cov>7, a(cusip) cluster(cusip)

*boldness
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & bold==1, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & bold==0, a(cusip) cluster(cusip)

*frequency
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & forecast_freq>=2, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 &  forecast_freq<2, a(cusip) cluster(cusip)


*overconfidence
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 & woverconfidence>=0.45, a(cusip) cluster(cusip)
xi:areg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  i.fyear if horizon >3 &  woverconfidence <0.45, a(cusip) cluster(cusip)




egen cusipid = group(cusip)
reg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  _Ifyear_1994-_Ifyear_2014 i.cusipid if horizon >3 & lexperience>=7.4
est store mgexp1
reg waccuracy  posneg1  lagwaccuracy wconsensusdispersion wrevision  sizeq1 wbtomf wturnover walpha_252 wcar_30 wcar_2 wconsensusforecast     bold  horizon forecast_freq  lexperience lfirmexp rfirm_coverage  relativerank   lnum  esq1 wvolatility mktret1 wownership   cigdummy   leverage24 momcig24 wiliquidity  woverconfidence  _Ifyear_1994-_Ifyear_2014 i.cusipid if horizon >3 & lexperience>=7.4
est store mgexp2
suest mgexp1 mgexp2



test [mgexp1_mean]pos1=[mgexp1_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1
test [a1_mean]pos1=[a2_mean]pos1




xi:areg wbias  pos1  lagwbias  i.fyear if horizon >3 & numaly>=4, a(cusip) cluster(cusip)

latabstat  wforecast_freq  rlexp rlfirmexp firm_coverage  relativerank   woverconfidence  if horizon >3 & numa>=4,  s(n mean sd min q max) col(stat)  f(%9.2fc)
  wforec~q  &  114209.00 &       2.05 &       0.88 &       1.00 &       1.00 &       2.00 &       2.00 &       7.00 \\
  lexper~e  &  114209.00 &       7.45 &       0.90 &       3.89 &       6.94 &       7.64 &       8.13 &       8.84 \\
  lfirmexp  &  114209.00 &       6.82 &       1.02 &       2.30 &       6.12 &       6.93 &       7.62 &       8.84 \\
  firm_c~e  &  114209.00 &       8.01 &       5.73 &       1.00 &       4.00 &       7.00 &      11.00 &      52.00 \\
  relati~k  &  114209.00 &      60.90 &      26.24 &       2.63 &      40.00 &      62.50 &      83.33 &     100.00 \\
  woverc~e  &  114209.00 &       0.44 &       0.18 &       0.00 &       0.36 &       0.45 &       0.52 &       1.00 \\

  
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & relativerank <=62.5, a(cusip) cluster(cusip)


xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & relativerank >=83.33, a(cusip) cluster(cusip)
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & relativerank <=40, a(cusip) cluster(cusip)

  
  
  
  
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & firm_cov >=11, a(cusip) cluster(cusip)
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & firm_cov <=4, a(cusip) cluster(cusip)

  
 xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & rbold ==1, a(cusip) cluster(cusip)
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & rbold ==0, a(cusip) cluster(cusip)

  
  
 xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & forecast_freq >=2, a(cusip) cluster(cusip)
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & rbold <2, a(cusip) cluster(cusip)

xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & overconfidence >0.45, a(cusip) cluster(cusip)
xi:areg fep  fdp   i.fyear if horizon >3 & numaly>=4 & overconfidence <0.45, a(cusip) cluster(cusip)












xi:sureg (waccuracy pos1 lagwaccuracy)(pos1 waccuracy lagwaccuracy) i.fyear 






