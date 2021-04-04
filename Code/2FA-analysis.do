tab gender
tab age
tab agegroup
tab education
tab income
tab location
tab status2fa
tab aware2fa
tab adopt2fa
tab adopt2fa gender, row chi2
tab aware2fa gender, row chi2
tab adopt2fa agegroup, row chi2
tab aware2fa agegroup, row chi2
tab aware2fa education, row chi2
tab adopt2fa education, row chi2
tab aware2fa income , row chi2
tab adopt2fa income, row chi2
tab gender status2fa, row
tab agegroup status2fa, row
tab education status2fa, row
tab income status2fa, row
mlogit status2fa gender age education#income, rrr
margins income#education, atmeans predict(outcome(1))
marginsplot, name("interm1")
margins income#education, atmeans predict(outcome(2))
marginsplot, name("interm2")
margins income#education, atmeans predict(outcome(3))
marginsplot, name("interm3")
mlogit status2fa education#income, rrr
logit aware2fa gender age education#income, or
logit adopt2fa gender age education#income if aware2fa==1, or
count
