
<style>
	header.masthead{
		background-image: url('<?php echo validate_image($_settings->info('cover')) ?>') !important;
	}
	header.masthead .container{
		background:#0000006b;
	}
</style>
<!-- Masthead-->
<header class="masthead">
	<div class="container">
		<div class="masthead-subheading">Selamat datang di website Karawang Indah!</div>
		<div class="masthead-heading text-uppercase">Lihat Paket Wisata Kami!</div>
		<a class="btn btn-primary btn-xl text-uppercase" href="#home">Lihat Tempat</a>
	</div>
</header>
<!-- Services-->
<section class="page-section bg-dark" id="home">
	<div class="container">
		<h2 class="text-center">Tour Packages</h2>
	<div class="d-flex w-100 justify-content-center">
		<hr class="border-warning" style="border:3px solid" width="15%">
	</div>
	<div class="row">
		<?php
		$packages = $conn->query("SELECT * FROM `packages` order by rand() limit 3");
			while($row = $packages->fetch_assoc() ):
				$cover='';
				if(is_dir(base_app.'uploads/package_'.$row['id'])){
					$img = scandir(base_app.'uploads/package_'.$row['id']);
					$k = array_search('.',$img);
					if($k !== false)
						unset($img[$k]);
					$k = array_search('..',$img);
					if($k !== false)
						unset($img[$k]);
					$cover = isset($img[2]) ? 'uploads/package_'.$row['id'].'/'.$img[2] : "";
				}
				$row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));

				$review = $conn->query("SELECT * FROM `rate_review` where package_id='{$row['id']}'");
				$review_count =$review->num_rows;
				$rate = 0;
				while($r= $review->fetch_assoc()){
					$rate += $r['rate'];
				}
				if($rate > 0 && $review_count > 0)
				$rate = number_format($rate/$review_count,0,"");
		?>
			<div class="col-md-4 p-4 ">
				<div class="card w-100 rounded-0">
					<img class="card-img-top" src="<?php echo validate_image($cover) ?>" alt="<?php echo $row['title'] ?>" height="200rem" style="object-fit:cover">
					<div class="card-body">
					<h5 class="card-title truncate-1 w-100"><?php echo $row['title'] ?></h5><br>
					<div class=" w-100 d-flex justify-content-start">
						<div class="stars stars-small">
							<form class="insert-rate" data-id="<?php echo $row['id'] ?>">
								<input class="star star-5" id="star5_<?php echo $row['id'] ?>" type="radio" name="rate" value="5" <?php echo $rate == 5 ? "checked" : '' ?> />
								<label class="star star-5" for="star5_<?php echo $row['id'] ?>"></label>
								
								<input class="star star-4" id="star4_<?php echo $row['id'] ?>" type="radio" name="rate" value="4" <?php echo $rate == 4 ? "checked" : '' ?> />
								<label class="star star-4" for="star4_<?php echo $row['id'] ?>"></label>
								
								<input class="star star-3" id="star3_<?php echo $row['id'] ?>" type="radio" name="rate" value="3" <?php echo $rate == 3 ? "checked" : '' ?> />
								<label class="star star-3" for="star3_<?php echo $row['id'] ?>"></label>
								
								<input class="star star-2" id="star2_<?php echo $row['id'] ?>" type="radio" name="rate" value="2" <?php echo $rate == 2 ? "checked" : '' ?> />
								<label class="star star-2" for="star2_<?php echo $row['id'] ?>"></label>
								
								<input class="star star-1" id="star1_<?php echo $row['id'] ?>" type="radio" name="rate" value="1" <?php echo $rate == 1 ? "checked" : '' ?> />
								<label class="star star-1" for="star1_<?php echo $row['id'] ?>"></label>

								<input type="hidden" name="package_id" value="<?php echo $row['id'] ?>">
							</form>
						</div>
                    </div>
    				<p class="card-text truncate"><?php echo $row['description'] ?></p>
					<div class="w-100 d-flex justify-content-end">
						<a href="./?page=view_package&id=<?php echo md5($row['id']) ?>" class="btn btn-sm btn-flat btn-warning">View Package <i class="fa fa-arrow-right"></i></a>
					</div>
					</div>
				</div>
			</div>
		<?php endwhile; ?>
	</div>
	<div class="d-flex w-100 justify-content-end">
		<a href="./?page=packages" class="btn btn-flat btn-warning mr-4">Explore Package <i class="fa fa-arrow-right"></i></a>
	</div>
	</div>
</section>
<!-- About-->
<section class="page-section" id="about">
	<div class="container">
		<div class="text-center">
			<h2 class="section-heading text-uppercase">About Us</h2>
		</div>
		<div>
			<div class="card w-100">
				<div class="card-body">
					<?php echo file_get_contents(base_app.'about.html') ?>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Contact-->
<section class="page-section" id="contact">
	<div class="container">
		<div class="text-center">
			<h2 class="section-heading text-uppercase">Contact Us</h2>
			<h3 class="section-subheading text-muted">Send us a message for inquiries.</h3>
		</div>
		<!-- * * * * * * * * * * * * * * *-->
		<!-- * * SB Forms Contact Form * *-->
		<!-- * * * * * * * * * * * * * * *-->
		<!-- This form is pre-integrated with SB Forms.-->
		<!-- To make this form functional, sign up at-->
		<!-- https://startbootstrap.com/solution/contact-forms-->
		<!-- to get an API token!-->
		<form id="contactForm" >
			<div class="row align-items-stretch mb-5">
				<div class="col-md-6">
					<div class="form-group">
						<!-- Name input-->
						<input class="form-control" id="name" name="name" type="text" placeholder="Your Name *" required />
					</div>
					<div class="form-group">
						<!-- Email address input-->
						<input class="form-control" id="email" name="email" type="email" placeholder="Your Email *" data-sb-validations="required,email" />
					</div>
					<div class="form-group mb-md-0">
						<input class="form-control" id="subject" name="subject" type="subject" placeholder="Subject *" required />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group form-group-textarea mb-md-0">
						<!-- Message input-->
						<textarea class="form-control" id="message" name="message" placeholder="Your Message *" required></textarea>
					</div>
				</div>
			</div>
			<div class="text-center">
				<button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Send Message</button>
			</div>
		</form>
	</div>
</section>
<script>
$(function(){
	$('#contactForm').submit(function(e){
		e.preventDefault()
		$.ajax({
			url:_base_url_+"classes/Master.php?f=save_inquiry",
			method:"POST",
			data:$(this).serialize(),
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("an error occured",'error')
				end_loader()
			},
			success:function(resp){
				if(typeof resp == 'object' && resp.status == 'success'){
					alert_toast("Inquiry sent",'success')
					$('#contactForm').get(0).reset()
				}else{
					console.log(resp)
					alert_toast("an error occured",'error')
					end_loader()
				}
			}
		})
	})
	$(function(){
		$('.insert-rate input[type=radio][name=rate]').change(function(){
			let form = $(this).closest('form');
			start_loader();

			if($('.err-msg').length > 0)
			$('.err-msg').remove();

			$.ajax({
			url: _base_url_+"classes/Master.php?f=rate_review",
			method: "POST",
			data: form.serialize(),
			dataType: "json",
			error: err => {
				console.log(err);
				alert_toast("An error occurred", 'error');
				end_loader();
			},
			success: function(resp){
				if(typeof resp == 'object' && resp.status == 'success'){
				alert_toast("Rate submitted", 'success');
				setTimeout(function(){
					location.reload();
				}, 1000);
				}else if(resp.status == 'failed' && !!resp.msg){
				var _err_el = $('<div>')
					.addClass("alert alert-danger err-msg")
					.text(resp.msg);
				form.prepend(_err_el);
				end_loader();
				}else{
				console.log(resp);
				alert_toast("An error occurred", 'error');
				end_loader();
				}
			}
			});
		});
	});
})
</script>