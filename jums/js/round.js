
    $(function(){
        var aLi = $('#brand .bd-box li');            
        var aSpan = aLi.find('span');
        var aImg = aLi.find('img');
        aLi.each(function(index){
            $(this).mouseover(function(){
                aImg.eq(index).stop();
                aSpan.eq(index).stop();
                aImg.eq(index).animate({
                    height:0,
                    top:38
                },80,'',function(){
                    $(this).hide();
                    aSpan.eq(index).show().animate({
                        height:75,
                        top:0
                    },80)
                })
            })
            $(this).mouseout(function(){
                aImg.eq(index).stop();
                aSpan.eq(index).stop();
                aSpan.eq(index).animate({
                    height:0,
                    top:38
                },80,'',function(){
                    $(this).hide();
                    aImg.eq(index).show().animate({
                        height:75,
                        top:0
                    },80)
                })
            })
        })
    })
