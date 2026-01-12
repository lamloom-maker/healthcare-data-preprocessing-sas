/* Healthcare Data Preparation & Analytics using SAS */

/* 1) Import dataset */
proc import datafile="data/diabetes_upd.csv"
    dbms=csv
    out=diabet
    replace;
    getnames=yes;
    guessingrows=max;
run;

/* 2) Preview data */
proc print data=diabet(obs=5);
run;

/* 3) Check metadata */
proc contents data=diabet;
run;

/* 4) Completeness flag + missing count */
data newdibet;
    set diabet;
    if cmiss(of _all_) > 0 then complete = 0;
    else complete = 1;

    miss_count = cmiss(of _all_);
run;

proc print data=newdibet(obs=10);
run;

proc means data=newdibet sum;
    var complete;
run;

/* 5) Keep non-missing frame values */
data have_frame;
    set diabet;
    where not missing(frame);
run;

proc freq data=have_frame;
    tables frame;
run;

proc freq data=have_frame;
    tables frame / missing;
run;

proc print data=have_frame(obs=20);
run;

/* 6) Recode frame levels */
data have_frame;
    set have_frame;
    if frame = "small"  then frame = "S";
    if frame = "medium" then frame = "M";
    if frame = "large"  then frame = "L";
run;

proc print data=have_frame(obs=20);
run;

/* 7) Summary statistics */
proc means data=diabet;
run;

proc means data=diabet;
    var age;
run;

/* 8) Correlation analysis */
proc corr data=diabet;
    var glyhb ratio;
run;

/* 9) Crosstab + Chi-square */
proc freq data=diabet;
    tables gender*frame / expected chisq;
run;

proc freq data=have_frame;
    tables gender*frame / missing;
run;

/* 10) Basic histograms */
ods graphics / width=600px height=400px;

proc sgplot data=diabet;
    histogram age;
run;

proc sgplot data=diabet;
    histogram ratio;
run;

proc sgplot data=diabet;
    histogram glyhb;
run;
