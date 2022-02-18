var i = 0;
function showSearch(){
    if(i == 0){
        document.getElementById('searchtext').style.display = 'inline-block';
        var w = 0;
        var it = setInterval(() => {
            w+=10;
            if(w > 300)
            {
                clearInterval(it,0);
            }
            document.getElementById('searchtext').style.width = w+'px';
        }, 15);
        i++;
        return;
    }
    else{
        var w = 300;
        var it = setInterval(() => {
            w -=10;
            if(w < 0)
            {
                clearInterval(it,0);
                document.getElementById('searchtext').value = "";
                document.getElementById('searchtext').style.display = 'none';
            }
            document.getElementById('searchtext').style.width = w+'px';
        }, 15);
        i--;
        return;
    }
}
$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.seentb').each(function(index){
        $(this).click(function(event){
            event.preventDefault()
            var id = $(".idtb").eq(index).text();
            var userid = $(".iduser").eq(index).text();
            console.log(id);
            console.log(userid);
            $.ajax({
                type: 'GET',
                url: '/seen/' + id + '/' + userid, 
                data:  {
                    id : id,
                    userid : userid
                },
                success: function(){
                    var xx = 'tb_'+id;
                    console.log(xx);
                    document.getElementById(xx).style.display = 'none';
                    console.log('it works!');
                }
            });
        });
    });
});
$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('#number_like').click(function(event){
        event.preventDefault();
        var id = $("#idpost").text();
        console.log(id);
        $.ajax({
            type: 'GET',
            url: '/likepost/' + id, 
            data:  {
                id : id
            },
            success: function(){
                var count = $("#count_like").text();
                var count2 = $("#count_dislike").text();
                var checkx = $('#checkx').text();
                if(checkx != 1){
                    var z = parseInt(count);
                    z = z+ 1
                    if(checkx == 2){
                        var k = parseInt(count2);
                        k = k - 1;
                        var id2 = 'number_dislike';
                        document.getElementById(id2).style.backgroundColor = 'initial';
                        $('#count_dislike').html(k);
                    }
                    var id1 = 'number_like';
                    document.getElementById(id1).style.backgroundColor = 'gold';
                    $('#count_like').html(z);
                    $('#checkx').html('1');
                }
                else{
                    var z = parseInt(count);
                    z = z - 1
                    var id1 = 'number_like';
                    document.getElementById(id1).style.backgroundColor = 'initial';
                    $('#count_like').html(z);
                    $('#checkx').html('0');
                }
                console.log('it works!');
            } 
        });
    });
});
$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('#number_dislike').click(function(event){
        event.preventDefault();
        var id = $("#idpost").text();
        console.log(id);
        $.ajax({
            type: 'GET',
            url: '/dislikepost/' + id, 
            data:  {
                id : id
            },
            success: function(){
                var count = $("#count_dislike").text();
                var count2 = $('#count_like').text();
                var checkx = $('#checkx').text();
                console.log(checkx);
                if(checkx != 2){
                    var z = parseInt(count);
                    z = z+ 1
                    if(checkx == 1){
                        var k = parseInt(count2);
                        k = k-1;
                        var id2 = 'number_like';
                        document.getElementById(id2).style.backgroundColor = 'initial';
                        $('#count_like').html(k);
                    }
                    console.log(z);
                    var id1 = 'number_dislike';                        
                    document.getElementById(id1).style.backgroundColor = 'gold';
                    $('#count_dislike').html(z);
                    $('#checkx').html('2');
                    }
                else{
                    var z = parseInt(count);
                    z = z - 1
                    console.log(z);
                    var id1 = 'number_dislike';
                    document.getElementById(id1).style.backgroundColor = 'initial';
                    $('#count_dislike').html(z);
                    $('#checkx').html('0');
                }
                console.log('it works!');
            } 
        });
    });
});
$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.xoasubcmt').each(function(index){
        $(this).click(function(event){
            event.preventDefault();
            var id =  $(".subcmt").eq(index).text()
            console.log(id);
            $.ajax({
                type: 'GET',
                url: '/delete/subcomment/' + id, 
                data:  {
                    id : id
                },
                success: function(){
                    document.getElementById(id).style.display = 'none';
                } 
            });
        });
    });
});
$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.xoacmt').each(function(index){
        $(this).click(function(event){
            event.preventDefault();
            var id = $("input[name=idcmt]").eq(index).val();
            console.log(id);
                $.ajax({
                    type: 'GET',
                    url: '/delete/comment/' + id, 
                    data:  {
                        id : id
                    },
                    success: function(){
                        document.getElementById(id).style.display = 'none';
                    } 
                });
        });
    });
});
function showsc(id){
    if( document.getElementById(id).style.display == 'none')
        document.getElementById(id).style.display = 'block';
    else 
    document.getElementById(id).style.display = 'none';
    return false;
}