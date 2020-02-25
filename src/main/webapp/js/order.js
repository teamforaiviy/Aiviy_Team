$(function () {

    $(".left li:first").click(function () {
        $(".d1").css("display","inline-block");
        $(".d1").siblings().hide();

    }).next().click(function () {
        $(".d3").css("display","inline-block");
        $(".d3").siblings().hide();


    }).next().click(function () {
        $(".d4").css("display","inline-block");
        $(".d4").siblings().hide();



    }).next().click(function () {
        $(".d5").css("display","inline-block");
        $(".d5").siblings().hide();
    })

    //========================================================================



})


