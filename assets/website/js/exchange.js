
$(document).ready(function() {
    let drawer_status = false;

    $(function() {
        $('div.split-pane').splitPane();
        $('button:first').on('click', function() {
            $('div.split-pane').splitPane('lastComponentSize', 200);
        });
        $('button:last').on('click', function() {
            $('div.split-pane').splitPane('firstComponentSize', 0);
        });
    });

    $("#logo").click(function(e) {
        e.stopPropagation();

        alert('logo_clicked');
    });

    $("#market-info").click(function(e) {
        e.stopPropagation();

        drawer_status = !drawer_status;
        $(this).toggleClass("active", drawer_status);
        $("#wallet-info").removeClass("active", drawer_status);
        $(".exchange-header").toggleClass("shadow");
        $(".exchange-wrapper .drawer-wrapper").toggleClass("show drawer-appear");
        $(".exchange-wrapper .drawer-wrapper .markets-info").removeClass("hide");
        $(".exchange-wrapper .drawer-wrapper .wallet-info").addClass("hide");
    });

    $("#wallet-info").click(function(e) {
        e.stopPropagation();

        drawer_status = !drawer_status;
        $("#market-info").removeClass("active", drawer_status);
        $(this).toggleClass("active", drawer_status);
        $(".exchange-header").toggleClass("shadow");
        $(".exchange-wrapper .drawer-wrapper").toggleClass("show drawer-appear");
        $(".exchange-wrapper .drawer-wrapper .markets-info").addClass("hide");
        $(".exchange-wrapper .drawer-wrapper .wallet-info").removeClass("hide");
    });

    $("#wallet-info-settings").click(function(e){
        e.stopPropagation();
        
        alert("settings clicked");
    });

    $(".btn-group-toggle input:radio").on('change', function(){
        var walletid = $(this).attr("id");
        $(`.exchange-wrapper .drawer-wrapper .wallet-info .wallet-content .${walletid}`).removeClass("hide");
        
        $(`.exchange-wrapper .drawer-wrapper .wallet-info .wallet-content .${walletid}`).siblings().addClass("hide");
    });

    $(".nav-tabs > .nav-item").click(function(e) {
        e.stopPropagation();

        $(this).siblings().find("a").removeClass("active");
        $(this).find("a").addClass("active");

        // Tab Pane
        let tab_id = $(this).find("a").attr("id");
        $(this).parent().parent().find(".tab-content .tab-pane").removeClass("show active");
        $(this).parent().parent().find(`.tab-content .tab-pane[aria-labelledby="${tab_id}"]`).addClass("show active");
    });


    $('#market-info .coin_symbol').html( coin_symbol );
    $(".trading_with_coin").html( trade_coin );

    openOrderUpdates();
    completeOrderUpdates();

    done();
    done01();
    // done1();
    // done2();
    // done02();



    $(".exchange-body .chart-menu .button-group .button").click(function(e) {
        e.stopPropagation();
    });

    $(".exchange-body .chart-menu .button-group .button ul > li").click(function(e) {
        e.stopPropagation();

        $(this).siblings().removeClass("active");
        $(this).addClass("active");
        
        $button = $(this).parent().parent().parent();
        if ($button.attr("id") == "candlestick-hours") {
            $button.find("span").html($(this).text());
        }
    });

    $(".markets-info-item").click(function(e) {
        e.stopPropagation();

        $(this).parent().siblings().removeClass("selected");
        $(this).parent().addClass("selected");
    })
});

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");                
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

 
function done() {
    setTimeout( function() { 
    // updates();
    done();
    }, 1500);
}
 
function done01() {
    setTimeout( function() { 
    // updates();
    updates_orderbook();
    tradehistoryupdates();
    openOrderUpdates();
    completeOrderUpdates();
    done01();
    }, 2000);
}

function updateSellingForm( price, qty ){
    
    var sellpricing = $("#sellpricing");
    var sellamount = $("#sellamount");

    sellpricing.val(price);
    sellamount.val(qty);
    updateSellingTotal();
}

function updateBuyingForm( price, qty ){
    
    var buypricing = $("#buypricing");
    var buyamount = $("#buyamount");
    
    buypricing.val(price);
    buyamount.val(qty);
    updateBuyingTotal();
}

function updateBuyingTotal(){    
    var totalBuyingPrice = $("#totalBuyingPrice");
    var buypricing = $("#buypricing").val();
    var buyamount = $("#buyamount").val();
    
    totalBuyingPrice.html(  parseFloat(parseFloat(buyamount * buypricing).toString()).toFixed(6)  );    
}

function updateSellingTotal(){
    var totalSellingPrice = $("#totalSellingPrice");
    var sellpricing = $("#sellpricing").val();
    var sellamount = $("#sellamount").val();
    
    totalSellingPrice.html(  parseFloat(parseFloat(sellamount * sellpricing).toString()).toFixed(6)  );
}

var lastPrice;

function livePriceChanged(){

}

function setMarketBuyAmount(percentage){
    $("#market-buy-amount").val( (availableSellCoin * percentage ) / 100  );
}

function setMarketSellAmount(percentage){
    $("#market-sell-amount").val( (availableBuyCoin * percentage ) / 100  );
}


// Update Orderbook 
function updates_orderbook() {
    $.getJSON( jsData.base_url + 'home/streamer_orders?market=' + jsData.coin_symbol.join('_'), function(data) {
        $("#orderbook tr.buy_order_row").remove();

        $.each(data.buy_orders, function(index, element){

            var tradeType = "BAD_REQUEST";
            var cls     = "";
            
            if (element.bid_type=='BUY') {
                tradeType   = "BUY";
                cls       ="color-inc";
                var onClick = 'onClick="updateSellingForm( '+ element.bid_price +', '+element.total_qty+' )"';                
                $("#orderbook .spread_line").after("<tr "+onClick+" class='buy_order_row'><td>"+  parseFloat(element.total_qty).toFixed(8) +"</td><td class='"+cls+"'>"+ parseFloat(element.bid_price).toFixed(6) +"</td><td>"+ parseFloat(parseFloat(element.total_price).toString()).toFixed(6) +"</td></tr>");
            }
            else {
                tradeType   = "BAD_REQUEST";
                cls       = "";
            }
        });

        $("#orderbook tr.sell_order_row").remove();
        $.each(data.sell_orders, function(index, element){

            var tradeType = "BAD_REQUEST";
            var cls     = "";

            if (element.bid_type == 'SELL') {
                tradeType   = "SELL";
                cls       ="color-dec";
                var onClick = 'onClick="updateBuyingForm( '+ element.bid_price +', '+element.total_qty+' )"';                
                $("#orderbook .spread_line").before("<tr "+onClick+" class='sell_order_row'><td>"+  parseFloat(element.total_qty).toFixed(8) +"</td><td class='"+cls+"'>"+ parseFloat(element.bid_price).toFixed(6) +"</td><td>"+ parseFloat(parseFloat(element.total_price).toString()).toFixed(6) +"</td></tr>");
            }
            else {
                tradeType   = "BAD_REQUEST";
                cls       = "";
            }
        });


        //Max Row Show From Stemar
        var maxTableRow = 22;
        var length1 = $('table tbody#orderbook tr').length;
        if (length1 >= (maxTableRow)) {
            $('table tbody#orderbook tr:last').remove();
        }
        
    });
}

var availableBuyCoin = 0;
var availableSellCoin = 0;

function availableQtyChanged(){
    console.log( 'availableBuyCoin ', availableBuyCoin);
    console.log( 'availableSellCoin ', availableSellCoin);
}

//Historycal data load
function tradehistoryupdates() {
    $.getJSON(  jsData.base_url + 'home/tradehistory/' + '?market='+ jsData.coin_symbol.join('_'), function(data) {
        $("#tradeHistory").empty();   

        if (data.available_buy_coin!=null) {

            if( availableBuyCoin != parseFloat( data.available_buy_coin.bid_qty_available ) ){
                availableBuyCoin = parseFloat( data.available_buy_coin.bid_qty_available );
                availableQtyChanged();
            }

            $(".available_buy_coin").html(parseFloat(data.available_buy_coin.bid_qty_available||0).toString());

        }else{

            if( availableBuyCoin != 0 ){
                availableBuyCoin = 0;
                availableQtyChanged();
            }

            availableBuyCoin = 0;
            $(".available_buy_coin").html(0.00);
            
        }
        if (data.available_sell_coin!=null) {
            
            if( availableSellCoin != parseFloat( data.available_sell_coin.bid_qty_available ) ){
                availableSellCoin = parseFloat( data.available_sell_coin.bid_qty_available );
                availableQtyChanged();
            }

            $(".available_sell_coin").html(parseFloat(data.available_sell_coin.bid_qty_available||0).toString());

        }else{
            
            if( availableSellCoin != 0 ){
                availableSellCoin = 0;
                availableQtyChanged();
            }

            availableSellCoin = 0;
            $(".available_sell_coin").html(0.00);
        }

        if (data.coinhistory) {

            var change = data.coinhistory.price_change_24h/data.coinhistory.last_price;
            var price_change_percent =  ( (Math.round(change*100)/100)*100 ).toString();


            if (change>0) {

                $('.price-status .indicator-container .indicator').removeClass('fa-arrow-down color-dec');
                $('.price-status .indicator-container .indicator').addClass( 'fa-arrow-up color-inc' );

                $('.price-status .price-change-24h-container .price-change-24h').removeClass('color-dec');
                $('.price-status .price-change-24h-container .price-change-24h').addClass('color-inc');

                $('.price-status .price-change-24h-container .price-change-24h').html( '+' + price_change_percent + '%' );

                $(".price_updown").html(parseFloat(data.coinhistory.last_price).toString()+' <i class="fa fa-arrow-up color-inc" aria-hidden="true"></i>');
                $('.price_updown').addClass("positive");
                $('.price_updown').addClass("color-inc");
                $('.coin-change-price').addClass("positive");
                $('.price_updown').removeClass("negative");
                $('.coin-change-price').removeClass("negative");
            }
            else if(change<0) {

                $('.price-status .indicator-container .indicator').removeClass('fa-arrow-up color-inc');
                $('.price-status .indicator-container .indicator').addClass( 'fa-arrow-down color-dec' );

                $('.price-status .price-change-24h-container .price-change-24h').removeClass('color-inc');
                $('.price-status .price-change-24h-container .price-change-24h').addClass('color-dec');

                $('.price-status .price-change-24h-container .price-change-24h').html( '-' + price_change_percent + '%' );

                $(".price_updown").html(parseFloat(data.coinhistory.last_price).toString()+' <i class="fa fa-arrow-down color-dec" aria-hidden="true"></i>');
                $('.price_updown').addClass("negative");
                $('.price_updown').addClass("color-dec");
                $('.coin-change-price').removeClass("positive");
                $('.price_updown').addClass("negative");
                $('.coin-change-price').addClass("negative");
            }else{

                $(".price_updown").html(parseFloat(data.coinhistory.last_price).toString());
                $('.price_updown').removeClass('positive');
                $('.price_updown').removeClass("coin-change-price");
                $('.price_updown').removeClass('positive');
                $('.price_updown').removeClass("coin-change-price");
            }

            if (typeof(data.coinhistory.last_price)!=='undefined' || typeof(data.coinhistory.last_price)!='null') {
                var last_price = data.coinhistory.last_price||0;
                $(".coin-last-price").html(parseFloat(last_price).toString());
            };
            // Updating top header price
            $('.price-status .price-container .top-price-updown').html( parseFloat(last_price).toString() + ' '+ jsData.coin_symbol[1] );

            if (typeof(data.coinhistory.volume_24h)!=='undefined' || typeof(data.coinhistory.volume_24h)!='null') {
                var volume_24h = data.coinhistory.volume_24h;
                $(".total_volume").html(parseFloat(volume_24h).toString());
                $(".volume-change-24h-container .volume-change-24h").html( parseFloat(volume_24h).toString() + ' ' + jsData.coin_symbol[0] );

            };
            if (typeof(data.coinhistory.price_change_24h)!=='undefined' || typeof(data.coinhistory.price_change_24h)!='null') {
                var price_change_24h = data.coinhistory.price_change_24h||0;
                var price_change_percent = (Math.round((price_change_24h/last_price)*100)/100)*100;
                $(".coin-change-price").html(parseFloat(price_change_percent.toFixed(2)).toString()+'%');

            };
            if (typeof(data.coinhistory.price_high_24h)!=='undefined' || typeof(data.coinhistory.price_high_24h)!='null') {
                var price_high_24h = data.coinhistory.price_high_24h||0;
                $(".coin-price-high").html(parseFloat(price_high_24h).toString());
            };
            if (typeof(data.coinhistory.price_low_24h)!=='undefined' || typeof(data.coinhistory.price_low_24h)!='null') {
                var price_low_24h = data.coinhistory.price_low_24h||0;
                $(".coin-price-low").html(parseFloat(price_low_24h).toString());
            };
        };

        // console.log(data);
        $.each(data.tradehistory, function(index, element){
            // console.log(element);

            if( element.status == 3 ){ return; }

            var tradeType = "BAD_REQUEST";
            var cls     = "";
            var cls1     = "";
            if (element.bid_type=='BUY') {
                tradeType   = "BUY";
                cls       ="color-inc";
                cls1       ="buy_price";

            }
            else if (element.bid_type=='SELL') {
                tradeType   = "SELL";
                cls       ="color-dec";
                cls1       ="sell_price";

            }
            else {

                tradeType   = "BAD_REQUEST";
                cls       = "";

            }

            // $("#tradeHistory").prepend("<tr><td class='date'>"+element.success_time+"</td><td class='type "+cls+"'>"+tradeType+"</td><td class='amount text-right'>"+ parseFloat(element.complete_qty).toFixed(6) +"</td><td class='price text-right "+cls1+"'>"+ parseFloat(element.bid_price).toString() +"</td><td class='total text-right'>"+ parseFloat(element.complete_amount).toString() +"</td></tr>");

            // $("#tradeHistory").prepend("<tr><td class='amount text-left'>"+ parseFloat(element.complete_qty).toFixed(6) +"</td><td class='price text-left "+cls1 + ' ' + cls +"'>"+ parseFloat(element.bid_price).toString() +"</td><td class='date'>"+element.success_time.substr(11)+"</td></tr>");
            $("#tradeHistory").prepend("<tr><td class='amount'>"+ parseFloat(element.complete_qty).toFixed(6) +"</td><td class='price"+cls1 + ' ' + cls +"'>"+ parseFloat(element.bid_price).toString() +"</td><td class='date'>"+element.success_time.substr(11)+"</td></tr>");

            //Max Row Show From Stemar
            var maxTableRow = 18;
            var length = $('table tbody#tradeHistory tr').length;
            if (length >= (maxTableRow)) {
                $('table tbody#tradeHistory tr:last').remove();
            }

        });
    });
}

function do_request_order_cancel( e, orderId ){
    e.preventDefault();
    console.log("Cancelling OrderId" , orderId ) ;

    $.getJSON(  jsData.base_url + 'request-order-cancel/'+orderId, function(data) {
        console.log(data);
        
        if( data.status == true ){
            openOrderUpdates();
            $("#order_row_"+orderId).remove();
        }
        alert(data.message);
    });


    return false;
}

function openOrderUpdates(){
    $.getJSON(  jsData.base_url + 'open-order-stream/'+coin_symbol_underscore, function(data) {
        $("#openOrderContainer").empty();        
        
        $.each(data.orders, function(index, element){            

            var cls = element.bid_type == 'SELL' ? 'color-dec' : 'color-inc';
            var market_symbol = element.market_symbol.split('_').join('/');

            var availableAvailable = parseFloat( element.bid_qty_available );
            var bidQty = parseFloat( element.bid_qty );
            var filled =  bidQty - availableAvailable ;

            var deleteBtn = "<a href='#' onclick='do_request_order_cancel(event, "+element.id+")' ><img class='spritemenu16' src='"+base_url+"assets/website/img/img_trans.gif' /></a>";
            $("#openOrderContainer").append("<tr id='order_row_"+element.id+"' ><td>"+ market_symbol +"</td><td class='price "+cls+ "'>"+ parseFloat(element.bid_price).toString() +"</td> <td>"+element.bid_qty+"</td> <td>"+filled+"</td> <td>"+element.fees_amount+"</td> <td class='date'>"+element.open_order.substr(11)+"</td> <td>"+deleteBtn+"</td> </tr>");
        });
        //<img class="spritemenu16" src="<?php echo base_url('assets/website/img/img_trans.gif') ?>" />
        //<img class='spritemenu16' src='' />;
    });   
}

function completeOrderUpdates(){
    
    $.getJSON(  jsData.base_url + 'complete-order-stream/'+coin_symbol_underscore, function(data) {
        $("#completeOrderContainer").empty();        
        
        $.each(data.orders, function(index, element){            

            var cls = element.bid_type == 'SELL' ? 'color-dec' : 'color-inc';
            var market_symbol = element.market_symbol.split('_').join('/');
            var availableAvailable = parseFloat( element.bid_qty_available );
            var bidQty = parseFloat( element.bid_qty );
            var filled =  bidQty - availableAvailable ;

            $("#completeOrderContainer").prepend("<tr><td>"+ market_symbol +"</td><td class='price "+cls+ "'>"+ parseFloat(element.bid_price).toString() +"</td> <td>"+filled+"</td> <td>"+element.bid_qty+"</td> <td>"+element.fees_amount+"</td> <td class='date'>"+element.open_order.substr(11)+"</td> <td></td> </tr>");
        });
    });   
}


$(function(){

    var buyFormId   = 'buyform_new';
    var sellFormId  = 'sellform_new';
    var marketLimitBuyFormId = 'marketLimitBuyForm' ;

    $("#"+buyFormId).on("submit", function(event) {
        event.preventDefault();
        var inputdata = $("#"+buyFormId).serialize();
        
        console.log($("#"+buyFormId).attr('action') ) ;

        $.ajax({
            url:$("#"+buyFormId).attr('action') ,
            type: "post",
            data: inputdata,
            success: function(response) {
                
                var data    = response.data;
                var status  =  response.status;
                var message =  response.message;
                console.log(data);

                if (status==0) {
                    alert( message );
                    // $(".buyloginMessage").html("<p class='alert-danger'>Trade dose not submited</p>");                    
                }else {
                    
                    $(".buyloginMessage").html("<p class='alert-success'>Your Order Requested Successfully</p>");
                    alert(message);

                    var trade = data.trades;
                    $("#balance_buy").text(parseFloat(trade.balance).toString());
                    $("#balance_sell").text(parseFloat(trade.balance_up_to).toString());
                    $("#buytrades").prepend("<tr><td class='buy_price text-right'>"+trades.bid_price+"</td><td class=' text-right'>"+trade.trades.bid_qty+"</td><td class=' text-right'>"+trades.total_amount+"</td></tr>");

                }
                document.getElementById(buyFormId).reset();
                openOrderUpdates();

                var cryptolistfrom = base_coin; 
                var cryptolistto = trade_coin; 
                /*
                $.getJSON("https://min-api.cryptocompare.com/data/price?fsym="+cryptolistfrom+"&tsyms="+cryptolistto+"&api_key=022360a74aff8f6455a956a81ae1104584ffc691f8cc9b7b2411509a55595800", function(result) {

                        var rate = 1;
                        if (result[Object.keys(result)[0]]=='Error') {
                            rate = "<?php echo @$market_details->initial_price==''?0:@$market_details->initial_price; ?>";

                        }else{
                            rate = parseFloat(parseFloat(result[Object.keys(result)[0]]).toFixed(8)).toString();
                        };


                        $( "#buypricing").val(rate);
                        $( "#sellpricing").val(rate);

                        // var buyfees = <?php echo (@$fee_to->fees=='')?0:@$fee_to->fees; ?>;
                        // var sellfees = <?php echo (@$fee_from->fees=='')?0:@$fee_from->fees; ?>;

                        //Todo : set buy fees and sell fees
                        var buyfees = 0;
                        var sellfees = 0;

                        var buywithout_feesval = rate*1;              
                        buywithout_feesval = buywithout_feesval.toFixed(8);       

                        $("#buywithout_fees").text(parseFloat(buywithout_feesval).toString());
                        $('#buywithout_feesval').val(parseFloat(buywithout_feesval).toString());
                        var feetxt = (buyfees/100)*(buywithout_feesval);
                        feetxt = feetxt.toFixed(8);
                        var fees = $("#buyfees").text(parseFloat(feetxt).toString()+trade_coin+' ('+buyfees+'%)');
                        $('#buyfeesval').val(feetxt);
                        var total = +buywithout_feesval + +feetxt;
                        $("#buytotal").text(parseFloat(total.toFixed(8)).toString());
                        $('#buytotalval').val(parseFloat(total.toFixed(8)).toString());

                        var sellwithout_fees =    rate*1;           
                        var sellwithout_fees =    sellwithout_fees.toFixed(8);           

                        $("#sellwithout_fees").text(parseFloat(sellwithout_fees).toString());
                        $('#sellwithout_feesval').val(1);
                        var feetxt = (sellfees/100)*1;
                        var feetxt2 = (sellfees/100)*sellwithout_fees;
                        feetxt = feetxt.toFixed(8);
                        feetxt2 = feetxt2.toFixed(8);
                        //var fees = $("#sellfees").text(feetxt+' <?php echo $coin_symbol[1] ?> ('+sellfees+'%)');
                        $("#sellfees").text(parseFloat(feetxt2).toString()+ trade_coin +'  ('+sellfees+'%)');
                        $('#sellfeesval').val(parseFloat(feetxt).toString());

                        var total = 1 + +feetxt;        
                        var total2 = +sellwithout_fees + +feetxt2;
                        $("#selltotal").text(parseFloat(total2.toFixed(8)).toString());
                        //$("#selltotal").text(total2);
                        $('#selltotalval').val(parseFloat(total).toString());
                });*/
            },
            error: function(error){
                alert(error.message);
                openOrderUpdates();
                // $(".buyloginMessage").prepend("<pre>"+error.message+"</pre>");
            }

        });
    }); // buyForm Ends


    $("#"+sellFormId).on("submit", function(event) {
        event.preventDefault();

        console.log($("#"+sellFormId).attr('action') ) ;

        var inputdata = $("#"+sellFormId).serialize();
        $.ajax({
            url: $("#"+sellFormId).attr('action'),
            type: "post",
            data: inputdata,
            success: function(response) {                            

                var data    =  response.data;
                var status  =  response.status;
                var message =  response.message;

                console.log(data);
                
                if (status==0) {
                    alert( message );
                    // $(".buyloginMessage").html("<p class='alert-danger'>Trade dose not submited</p>");
                }else {
                    // $(".sellloginMessage").html("<p class='alert-success'>Your Order Requested Successfully</p>");
                    alert( message );
                    
                    var trade = data.trades;
                    //console.log(trade);
                    $("#balance_sell").text(parseFloat(trade.balance).toString());
                    $("#balance_buy").text(parseFloat(trade.balance_up_to).toString());
                    $("#selltrades").prepend("<tr><td class='sell_price'>"+trade.bid_price+"</td><td>"+trade.bid_qty+"</td><td>"+trade.total_amount+"</td></tr>");

                }
                
                document.getElementById(sellFormId).reset();

                var cryptolistfrom = base_coin; 
                var cryptolistto = trade_coin;

                /*
                $.getJSON("https://min-api.cryptocompare.com/data/price?fsym="+cryptolistfrom+"&tsyms="+cryptolistto+"&api_key=022360a74aff8f6455a956a81ae1104584ffc691f8cc9b7b2411509a55595800", function(result) {

                        var rate = 1;
                        if (result[Object.keys(result)[0]]=='Error') {
                            rate = "<?php echo @$market_details->initial_price==''?0:@$market_details->initial_price; ?>";

                        }else{
                            rate = parseFloat(parseFloat(result[Object.keys(result)[0]]).toFixed(8)).toString();
                        };

                        $( "#buypricing").val(rate);
                        $( "#sellpricing").val(rate);


                        var buyfees = <?php echo (@$fee_to->fees=='')?0:@$fee_to->fees; ?>;
                        var sellfees = <?php echo (@$fee_from->fees=='')?0:@$fee_from->fees; ?>;

                        var buywithout_feesval = rate*1;              
                        buywithout_feesval = buywithout_feesval.toFixed(8);       

                        $("#buywithout_fees").text(parseFloat(buywithout_feesval).toString());
                        $('#buywithout_feesval').val(parseFloat(buywithout_feesval).toString());
                        var feetxt = (buyfees/100)*(buywithout_feesval);
                        feetxt = feetxt.toFixed(8);
                        var fees = $("#buyfees").text(parseFloat(feetxt).toString()+' <?php echo $coin_symbol[1] ?> ('+buyfees+'%)');
                        $('#buyfeesval').val(feetxt);
                        var total = +buywithout_feesval + +feetxt;
                        $("#buytotal").text(parseFloat(total.toFixed(8)).toString());
                        $('#buytotalval').val(parseFloat(total.toFixed(8)).toString());




                        var sellwithout_fees =    rate*1;           
                        var sellwithout_fees =    sellwithout_fees.toFixed(8);           

                        $("#sellwithout_fees").text(parseFloat(sellwithout_fees).toString());
                        $('#sellwithout_feesval').val(1);
                        var feetxt = (sellfees/100)*1;
                        var feetxt2 = (sellfees/100)*sellwithout_fees;
                        feetxt = feetxt.toFixed(8);
                        feetxt2 = feetxt2.toFixed(8);
                        //var fees = $("#sellfees").text(feetxt+' <?php echo $coin_symbol[1] ?> ('+sellfees+'%)');
                        $("#sellfees").text(parseFloat(feetxt2).toString()+' <?php echo $coin_symbol[1] ?> ('+sellfees+'%)');
                        $('#sellfeesval').val(parseFloat(feetxt).toString());

                        var total = 1 + +feetxt;        
                        var total2 = +sellwithout_fees + +feetxt2;
                        $("#selltotal").text(parseFloat(total2.toFixed(8)).toString());
                        //$("#selltotal").text(total2);
                        $('#selltotalval').val(parseFloat(total).toString());

                    
                }); */

            },
            error: function(data){
                $(".sellloginMessage").prepend("<pre>"+data+"</pre>");
            }
        });
    });// sellForm Ends

    $("#"+marketLimitBuyFormId).on("submit", function(event) {
        event.preventDefault();
        var inputdata = $("#"+marketLimitBuyFormId).serialize();
        
        console.log($("#"+marketLimitBuyFormId).attr('action') ) ;

        $.ajax({
            url:$("#"+marketLimitBuyFormId).attr('action') ,
            type: "post",
            data: inputdata,
            success: function(response) {
                
                var data    = response.data;
                var status  =  response.status;
                var message =  response.message;
                console.log(data);

                if (status==0) {
                    alert( message );
                    // $(".buyloginMessage").html("<p class='alert-danger'>Trade dose not submited</p>");                    
                }else {
                    
                    // $(".buyloginMessage").html("<p class='alert-success'>Your Order Requested Successfully</p>");
                    alert(message);

                }
                document.getElementById(marketLimitBuyFormId).reset();
                openOrderUpdates();
                tradehistoryupdates();
                updates_orderbook();
            },
            error: function(error){
                alert(error.message);
                openOrderUpdates();
                tradehistoryupdates();
                updates_orderbook();
                // $(".buyloginMessage").prepend("<pre>"+error.message+"</pre>");
            }

        });
    }); // buyForm Ends


    $("#buypricing , #buyamount").keyup(function(e){
        updateBuyingTotal();
    });

    $("#sellpricing , #sellamount").keyup(function(e){
        updateSellingTotal();
    });

});

// Tradingview chart init
TradingView.onready(function()
{
    console.log('Started....');
    var widget = window.tvWidget = new TradingView.widget({
        // debug: true, // uncomment this line to see Library errors and warnings in the console
        fullscreen: true,
        symbol: getParameterByName('market'),
        interval: '15',
        supported_resoultions : ['1', '3', '5','15','30','45','60','120',"D", "2D", "3D", "W", "3W", "M", "6M"] ,
        container_id: "tv_chart_container",
        //	BEWARE: no trailing slash is expected in feed URL
        // datafeed: new Datafeeds.UDFCompatibleDatafeed("https://demo_feed.tradingview.com"),
        datafeed: new Datafeeds.UDFCompatibleDatafeed("/exchange/feed"),
        library_path: "/assets/js/charting_library/",
        locale: getParameterByName('lang') || "en",

        disabled_features: ["use_localstorage_for_settings"],
        enabled_features: ["study_templates"],
        charts_storage_url: 'http://saveload.tradingview.com',
        charts_storage_api_version: "1.1",
        client_id: 'tradingview.com',
        user_id: 'public_user_id',
        // theme: getParameterByName('theme'),     
        "theme": "Dark",
        toolbar_bg : "#344053",
        timeframe : '1M',
        overrides: {
            height : 70,
            "paneProperties.topMargin" : 25,
            "paneProperties.bottomMargin" : 25,
            "paneProperties.leftAxisProperties.autoScale" : false,
            "paneProperties.rightAxisProperties.autoScale" : false,                        

        	"paneProperties.background": "#344053",
        	"paneProperties.vertGridProperties.color": "#D2D7DB",
        	"paneProperties.horzGridProperties.color": "#D2D7DB",
        // 	"symbolWatermarkProperties.transparency": 90,
        // 	"scalesProperties.textColor" : "#AAA"
            "scalesProperties.autoscale" : false,
        // "scalesProperties.topMargin" : 25,
        // "scalesProperties.bottomMargin" : 25,
             
        }
    });
});

