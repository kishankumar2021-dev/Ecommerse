<footer class="text-light" style="background: linear-gradient(blue, green);"">
    <div class=" container">
    <div class="row">
        <div class="col-md-3 col-lg-4 col-xl-3">
            <h5>About</h5>
            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
            <p class="mb-0" style="font-size:15px;text-shadow:2px 2px 1px aqua; ">
                E-Commerce Is Very Usefull Websites And Plateform Its Provide A Easy And Fast Delivery To You Want Delivery Address <br>
            <h3 style="text-shadow: 4px 4px 25px orange;color:white;">Welcome</h3>
            </p>
        </div>

        <div class=" col-md-2 col-lg-2 col-xl-2 mx-auto">
            <h5>Informations</h5>
            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
            <ul class="list-unstyled">
                <li><a href="#" style="font-size: 20px;text-shadow:2px 2px 1px aqua; font-family:algerian;"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" style="font-size: 20px;text-shadow:2px 2px 1px aqua;"><i class=" fa fa-instagram"></i></a></li>
                <li><a href="#" style="font-size: 20px;text-shadow:2px 2px 1px aqua;"><i class=" fa fa-whatsapp"></i></a></li>
                <li><a href="#" style="font-size: 20px;text-shadow:2px 2px 1px aqua;"><i class=" fa fa-twitter"></i></a></li>
            </ul>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
            <h5>Others links</h5>
            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
            <ul class="list-unstyled">
                <li><a href="https://www.linkedin.com/in/kishan-kumar-a82044226/"><i class="fa fa-linkedin mt-2" aria-hidden="true" style="font-size: 28px;text-shadow:2px 2px 1px magenta"></i></a></li>
                <li><a href="https://github.com/kishankumar2021-dev"><i class="fa fa-github-square mt-1" aria-hidden="true" style="font-size: 28px;text-shadow:2px 2px 1px magenta"></i></a></li>

            </ul>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3">
            <h5>Contact</h5>
            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
            <ul class="list-unstyled">
                <li><i class="fa fa-home mr-2"></i>E-COMMERCE SHOP</li>
                <li><i class="fa fa-envelope mr-2"></i><a href="https://mail.google.com">Mail Me</a></li>
                <li><i class="fa fa-phone mr-2"></i><a href="Tel:9889104576">Contact</a></li>

            </ul>
        </div>
        <div class="col-12 copyright mt-3">
            <p class="float-left">
                <a href="#">Back to top</a>
            </p>
            <p class="text-right text-muted" style="font-size:20px;">created with <i class="fa fa-heart"></i> by <a href=""><i>kishan_kumar</i></a> </p>
        </div>
    </div>
    </div>
</footer>


<!-- JS -->
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>


<!-- modal script -->



<!-- JS -->
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    //Plus & Minus for Quantity product
    $(document).ready(function() {
        var quantity = 1;

        $('.quantity-right-plus').click(function(e) {
            e.preventDefault();
            var quantity = parseInt($('#quantity').val());
            $('#quantity').val(quantity + 1);
        });

        $('.quantity-left-minus').click(function(e) {
            e.preventDefault();
            var quantity = parseInt($('#quantity').val());
            if (quantity > 1) {
                $('#quantity').val(quantity - 1);
            }
        });

    });
</script>

<script>
    function printDiv() {
        var divContents = document.getElementById("G").innerHTML;
        var a = window.open('', '', 'height=1000, width=1000');
        a.document.write('<html>');
        a.document.write('<body > <h1>Bill Reciept <br>');
        a.document.write(divContents);
        a.document.write('</body></html>');

        a.document.close();
        a.print();
    }
</script>