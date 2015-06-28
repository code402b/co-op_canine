$(document).ready(function(){
            $('#girl1').hide().fadeIn(3000); 
            $('#girl2').hide().fadeIn(3000); 
            $('#lady1').hide().fadeIn(3000);
            $('#man2').hide().fadeIn(3000); 
            $('.lines').hide().delay(1000).fadeIn(3000);   
            $('#dog1').hide().delay(2000).fadeIn(3000);
            $('#dog3').hide().delay(2000).fadeIn(3000);   
            $('#guy1').hide().delay(3000).fadeIn(3000); 
            $('#guy2').hide().delay(3000).fadeIn(3000); 
            $('#lady2').hide().delay(3000).fadeIn(3000);
            $('#man3').hide().delay(3000).fadeIn(3000); 
            $('.lines2').hide().delay(4000).fadeIn(3000);   
            $('#dog2').hide().delay(5000).fadeIn(3000);
            $('#dog4').hide().delay(5000).fadeIn(3000);  
            // $('#first').css({'background-color':'#428080','border-radius':'20px','padding':'10px'}),3000;  
            // $('#second').css({'background-color':'#428080','border-radius':'20px','padding':'10px'}),3000;  
            // $('#third').hide().css({'background-color':'#428080','border-radius':'20px','padding':'20px'}).show(3000),3000;  
            // $('#fourth').hide().show(3000).css({'background-color':'#428080','border-radius':'20px','padding':'20px'}),3000;  
            $('#first').fadeTo(3000, 0.3, 'swing', function(){
            $(this).css({"background-color":"#428080",'border-radius':'20px'});
              }).delay(1000).fadeTo('slow', 1);
            $('#second').fadeTo(3000, 0.3, 'swing', function(){
            $(this).css({"background-color":"#428080",'border-radius':'20px'});
              }).delay(1000).fadeTo('slow', 1);
            $('#third').fadeTo(5000, 0.3, 'swing', function(){
            $(this).css({"background-color":"#428080",'border-radius':'20px'});
              }).delay(1000).fadeTo('slow', 1);
            $('#fourth').fadeTo(5000, 0.3, 'swing', function(){
            $(this).css({"background-color":"#428080",'border-radius':'20px'});
              }).delay(1000).fadeTo('slow', 1);
           // $("#first").delay(4000).queue(function() {
           //  $(this).css({"background-color":"#428080",'border-radius':'20px','padding':'10px'}).dequeue();
           //   })
           //  .fadeIn(3000);
            // $("#second").delay(4000).queue(function() {
            // $(this).css({"background-color":"#428080",'border-radius':'20px','padding':'10px'}).dequeue();
            //  })
            // .fadeIn(3000);
            // $("#third").delay(4000).queue(function() {
            // $(this).css({"background-color":"#428080",'border-radius':'20px','padding':'10px'}).dequeue();
            //  })
            // .fadeIn(3000);
            // $("#fourth").delay(4000).queue(function() {
            // $(this).css({"background-color":"#428080",'border-radius':'20px','padding':'10px'}).dequeue();
            //  })
            // .fadeIn(3000);
           
          });


         




