/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function ($) {
                // creating a container variable to hold the 'UL' elements. It uses method chaining.
                var container=$('div.slider')
                                            .css('overflow','hidden')
                                            .children('ul');
                 
                /* 
                On the event of mouse-hover, 
                    i) Change the visibility of Button Controls.
                    ii) SET/RESET the "intv" variable to switch between AutoSlider and Stop mode.
                */
                $('.gallery').hover(function( e ){
                    $('#slider-nav').toggle();
                    return e.type=='mouseenter'?clearInterval(intv):autoSlider();
                });
                 
                // Creating the 'slider' instance which will set initial parameters for the Slider.
                var sliderobj= new slider(container,$('#slider-nav'));
                /*
                This will trigger the 'setCurrentPos' and 'transition' methods on click of any button
                 "data-dir" attribute associated with the button will determine the direction of sliding.
                */
                sliderobj.nav.find('button').on('click', function(){
                    sliderobj.setCurrentPos($(this).data('dir'));
                    sliderobj.transition();
                });
                 
                autoSlider(); // Calling autoSlider() method on Page Load.
                 
                /* 
                This function will initialize the interval variable which will cause execution of the inner function after every 2 seconds automatically.
                */
                function autoSlider()
                {
                    return intv = setInterval(function(){
                        sliderobj.setCurrentPos('next');
                        sliderobj.transition();
                    }, 2000);
                }
                 
            });
