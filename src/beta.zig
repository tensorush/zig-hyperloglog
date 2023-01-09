const std = @import("std");
const math = std.math;

pub fn beta(comptime p: u64, z: f64) f64 {
    switch (p) {
        4 => return beta4(z),
        5 => return beta5(z),
        6 => return beta6(z),
        7 => return beta7(z),
        8 => return beta8(z),
        9 => return beta9(z),
        10 => return beta10(z),
        11 => return beta11(z),
        12 => return beta12(z),
        13 => return beta13(z),
        14 => return beta14(z),
        15 => return beta15(z),
        16 => return beta16(z),
        17 => return beta17(z),
        18 => return beta18(z),
        else => unreachable(z),
    }
}

// p=4 [-0.582581413904517,-1.935300357560050,11.07932375 8035073,-22.131357446444323,22.505391846630037,-12 .000723834917984,3.220579408194167,-0.342225302271 235]
fn beta4(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.582581413904517 * z +
        1.935300357560050 * zl +
        -11.079323758035073 * math.pow(f64, zl, 2) +
        22.131357446444323 * math.pow(f64, zl, 3) +
        -22.505391846630037 * math.pow(f64, zl, 4) +
        12.000723834917984 * math.pow(f64, zl, 5) +
        -3.220579408194167 * math.pow(f64, zl, 6) +
        0.342225302271235 * math.pow(f64, zl, 7);
}

// p=5 [-0.7518999460733967,-0.9590030077748760,5.5997371 322141607,-8.2097636999765520,6.5091254894472037,- 2.6830293734323729,0.5612891113138221,-0.046333162 2196545]
fn beta5(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.7518999460733967 * z +
        -0.9590030077748760 * zl +
        5.5997371322141607 * math.pow(f64, zl, 2) +
        -8.2097636999765520 * math.pow(f64, zl, 3) +
        6.5091254894472037 * math.pow(f64, zl, 4) +
        -2.6830293734323729 * math.pow(f64, zl, 5) +
        0.5612891113138221 * math.pow(f64, zl, 6) +
        -0.0463331622196545 * math.pow(f64, zl, 7);
}

// p=6 [29.8257900969619634,-31.3287083337725925,-10.5942 523036582283,-11.5720125689099618,3.81887543739074 92,-2.4160130328530811,0.4542208940970826,-0.05751 55452020420]
fn beta6(z: f64) f64 {
    const zl = math.ln(z + 1);
    return 29.8257900969619634 * z +
        -31.3287083337725925 * zl +
        -10.5942523036582283 * math.pow(f64, zl, 2) +
        -11.5720125689099618 * math.pow(f64, zl, 3) +
        3.8188754373907492 * math.pow(f64, zl, 4) +
        -2.4160130328530811 * math.pow(f64, zl, 5) +
        0.4542208940970826 * math.pow(f64, zl, 5) +
        -0.0575155452020420 * math.pow(f64, zl, 7);
}

// p=7 [2.8102921290820060,-3.9780498518175995,1.31626800 41351582,-3.9252486335805901,2.0080835753946471,-0 .7527151937556955,0.1265569894242751,-0.0109946438 726240]
fn beta7(z: f64) f64 {
    const zl = math.ln(z + 1);
    return 2.8102921290820060 * z +
        -3.9780498518175995 * zl +
        1.3162680041351582 * math.pow(f64, zl, 2) +
        -3.9252486335805901 * math.pow(f64, zl, 3) +
        2.0080835753946471 * math.pow(f64, zl, 4) +
        -0.7527151937556955 * math.pow(f64, zl, 5) +
        0.1265569894242751 * math.pow(f64, zl, 6) +
        -0.0109946438726240 * math.pow(f64, zl, 7);
}

// p=8 [1.00633544887550519,-2.00580666405112407,1.643697 49366514117,-2.70560809940566172,1.392099802442225 98,-0.46470374272183190,0.07384282377269775,-0.005 78554885254223]
fn beta8(z: f64) f64 {
    const zl = math.ln(z + 1);
    return 1.00633544887550519 * z +
        -2.00580666405112407 * zl +
        1.64369749366514117 * math.pow(f64, zl, 2) +
        -2.70560809940566172 * math.pow(f64, zl, 3) +
        1.39209980244222598 * math.pow(f64, zl, 4) +
        -0.46470374272183190 * math.pow(f64, zl, 5) +
        0.07384282377269775 * math.pow(f64, zl, 6) +
        -0.00578554885254223 * math.pow(f64, zl, 7);
}

// p=9 [-0.09415657458167959,-0.78130975924550528,1.71514 946750712460,-1.73711250406516338,0.86441508489048 924,-0.23819027465047218,0.03343448400269076,-0.00 207858528178157]
fn beta9(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.09415657458167959 * z +
        -0.78130975924550528 * zl +
        1.71514946750712460 * math.pow(f64, zl, 2) +
        -1.73711250406516338 * math.pow(f64, zl, 3) +
        0.86441508489048924 * math.pow(f64, zl, 4) +
        -0.23819027465047218 * math.pow(f64, zl, 5) +
        0.03343448400269076 * math.pow(f64, zl, 6) +
        -0.00207858528178157 * math.pow(f64, zl, 7);
}

// p=10 [-0.25935400670790054,-0.52598301999805808,1.48933 034925876839,-1.29642714084993571,0.62284756217221615,-0.15672326770251041,0.02054415903878563,-0.00 112488483925502]
fn beta10(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.25935400670790054 * z +
        -0.52598301999805808 * zl +
        1.48933034925876839 * math.pow(f64, zl, 2) +
        -1.29642714084993571 * math.pow(f64, zl, 3) +
        0.62284756217221615 * math.pow(f64, zl, 4) +
        -0.15672326770251041 * math.pow(f64, zl, 5) +
        0.02054415903878563 * math.pow(f64, zl, 6) +
        -0.00112488483925502 * math.pow(f64, zl, 7);
}

// p=11 [-4.32325553856025e-01,-1.08450736399632e-01,6.091 56550741120e-01,-1.65687801845180e-02,-7.958293410 87617e-02,4.71830602102918e-02,-7.81372902346934e- 03,5.84268708489995e-04]
fn beta11(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -4.32325553856025e-01 * z +
        -1.08450736399632e-01 * zl +
        6.09156550741120e-01 * math.pow(f64, zl, 2) +
        -1.65687801845180e-02 * math.pow(f64, zl, 3) +
        -7.95829341087617e-02 * math.pow(f64, zl, 4) +
        4.71830602102918e-02 * math.pow(f64, zl, 5) +
        -7.81372902346934e-03 * math.pow(f64, zl, 6) +
        5.84268708489995e-04 * math.pow(f64, zl, 7);
}

// p=12 [-3.84979202588598e-01,1.83162233114364e-01,1.3039 6688841854e-01,7.04838927629266e-02,-8.95893971464 453e-03,1.13010036741605e-02,-1.94285569591290e-03 ,2.25435774024964e-04]
fn beta12(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -3.84979202588598e-01 * z +
        1.83162233114364e-01 * zl +
        1.30396688841854e-01 * math.pow(f64, zl, 2) +
        7.04838927629266e-02 * math.pow(f64, zl, 3) +
        -8.95893971464453e-03 * math.pow(f64, zl, 4) +
        1.13010036741605e-02 * math.pow(f64, zl, 5) +
        -1.94285569591290e-03 * math.pow(f64, zl, 6) +
        2.25435774024964e-04 * math.pow(f64, zl, 7);
}

// p=13 [-0.41655270946462997,-0.22146677040685156,0.38862 131236999947,0.45340979746062371,-0.36264738324476 375,0.12304650053558529,-0.01701540384555510,0.001 02750367080838]
fn beta13(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.41655270946462997 * z +
        -0.22146677040685156 * zl +
        0.38862131236999947 * math.pow(f64, zl, 2) +
        0.45340979746062371 * math.pow(f64, zl, 3) +
        -0.36264738324476375 * math.pow(f64, zl, 4) +
        0.12304650053558529 * math.pow(f64, zl, 5) +
        -0.01701540384555510 * math.pow(f64, zl, 6) +
        0.00102750367080838 * math.pow(f64, zl, 7);
}

// p=14 [-3.71009760230692e-01,9.78811941207509e-03,1.8579 6293324165e-01,2.03015527328432e-01,-1.16710521803 686e-01,4.31106699492820e-02,-5.99583540511831e-03 ,4.49704299509437e-04]
fn beta14(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -3.71009760230692e-01 * z +
        9.78811941207509e-03 * zl +
        1.85796293324165e-01 * math.pow(f64, zl, 2) +
        2.03015527328432e-01 * math.pow(f64, zl, 3) +
        -1.16710521803686e-01 * math.pow(f64, zl, 4) +
        4.31106699492820e-02 * math.pow(f64, zl, 5) +
        -5.99583540511831e-03 * math.pow(f64, zl, 6) +
        4.49704299509437e-04 * math.pow(f64, zl, 7);
}

// p=15 [-0.38215145543875273,-0.89069400536090837,0.37602 335774678869,0.99335977440682377,-0.65577441638318 956,0.18332342129703610,-0.02241529633062872,0.001 21399789330194]
fn beta15(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.38215145543875273 * z +
        -0.89069400536090837 * zl +
        0.37602335774678869 * math.pow(f64, zl, 2) +
        0.99335977440682377 * math.pow(f64, zl, 3) +
        -0.65577441638318956 * math.pow(f64, zl, 4) +
        0.18332342129703610 * math.pow(f64, zl, 5) +
        -0.02241529633062872 * math.pow(f64, zl, 6) +
        0.00121399789330194 * math.pow(f64, zl, 7);
}

// p=16 [-0.37331876643753059,-1.41704077448122989,0.40729 184796612533,1.56152033906584164,-0.99242233534286 128,0.26064681399483092,-0.03053811369682807,0.001 55770210179105]
fn beta16(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.37331876643753059 * z +
        -1.41704077448122989 * zl +
        0.40729184796612533 * math.pow(f64, zl, 2) +
        1.56152033906584164 * math.pow(f64, zl, 3) +
        -0.99242233534286128 * math.pow(f64, zl, 4) +
        0.26064681399483092 * math.pow(f64, zl, 5) +
        -0.03053811369682807 * math.pow(f64, zl, 6) +
        0.00155770210179105 * math.pow(f64, zl, 7);
}

// p=17 [-0.36775502299404605,0.53831422351377967,0.769702 89278767923,0.55002583586450560,-0.745755882611469 41,0.25711835785821952,-0.03437902606864149,0.0018 5949146371616]
fn beta17(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.36775502299404605 * z +
        0.53831422351377967 * zl +
        0.76970289278767923 * math.pow(f64, zl, 2) +
        0.55002583586450560 * math.pow(f64, zl, 3) +
        -0.74575588261146941 * math.pow(f64, zl, 4) +
        0.25711835785821952 * math.pow(f64, zl, 5) +
        -0.03437902606864149 * math.pow(f64, zl, 6) +
        0.00185949146371616 * math.pow(f64, zl, 7);
}

// p=18 [-0.36479623325960542,0.99730412328635032,1.553543 86230081221,1.25932677198028919,-1.533259482091101 63,0.47801042200056593,-0.05951025172951174,0.0029 1076804642205]
fn beta18(z: f64) f64 {
    const zl = math.ln(z + 1);
    return -0.36479623325960542 * z +
        0.99730412328635032 * zl +
        1.55354386230081221 * math.pow(f64, zl, 2) +
        1.25932677198028919 * math.pow(f64, zl, 3) +
        -1.53325948209110163 * math.pow(f64, zl, 4) +
        0.47801042200056593 * math.pow(f64, zl, 5) +
        -0.05951025172951174 * math.pow(f64, zl, 6) +
        0.00291076804642205 * math.pow(f64, zl, 7);
}
