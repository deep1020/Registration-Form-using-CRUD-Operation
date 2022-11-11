From
<select class="from">
  <option value="09:00 AM">09:00 AM</option>
  <option value="10:00 AM">10:00 AM</option>
  <option value="10:15 AM">10:15 AM</option>
  <option value="10:30 AM">10:30 AM</option>
  <option value="10:45 AM">10:45 AM</option>
  <option value="11:00 AM">11:00 AM</option>
  <option value="11:15 AM">11:15 AM</option>
  <option value="11:30 AM">11:30 AM</option>
  <option value="11:45 AM">11:45 AM</option>
  <option value="12:00 PM">12:00 PM</option>
  <option value="12:15 PM">12:15 PM</option>
  <option value="12:30 PM">12:30 PM</option>
  <option value="12:45 PM">12:45 PM</option>
  <option value="01:00 PM">01:00 PM</option>
  <option value="01:15 PM">01:15 PM</option>
  <option value="01:30 PM">01:30 PM</option>
  <option value="01:45 PM">01:45 PM</option>
  <option value="02:00 PM">02:00 PM</option>
  <option value="02:15 PM">02:15 PM</option>
  <option value="02:30 PM">02:30 PM</option>
  <option value="02:45 PM">02:45 PM</option>
  <option value="03:00 PM">03:00 PM</option>
  <option value="03:15 PM">03:15 PM</option>
  <option value="03:30 PM">03:30 PM</option>
  <option value="03:45 PM">03:45 PM</option>
  <option value="04:00 PM">04:00 PM</option>
  <option value="04:15 PM">04:15 PM</option>
  <option value="04:30 PM">04:30 PM</option>
  <option value="04:45 PM">04:45 PM</option>
  <option value="05:00 PM">05:00 PM</option>
  <option value="05:15 PM">05:15 PM</option>
  <option value="05:30 PM">05:30 PM</option>
  <option value="05:45 PM">05:45 PM</option>
  <option value="06:00 PM">06:00 PM</option>
  <option value="06:15 PM">06:15 PM</option>
  <option value="06:30 PM">06:30 PM</option>
  <option value="06:45 PM">06:45 PM</option>
  <option value="07:00 PM">07:00 PM</option>
  <option value="07:15 PM">07:15 PM</option>
  <option value="07:30 PM">07:30 PM</option>
  <option value="07:45 PM">07:45 PM</option>
  <option value="08:00 PM">08:00 PM</option>
  <option value="08:15 PM">08:15 PM</option>
</select>

<br /><br />

To
<select class="to">
  <option value="10:00 AM">10:00 AM</option>
  <option value="10:15 AM">10:15 AM</option>
  <option value="10:30 AM">10:30 AM</option>
  <option value="10:45 AM">10:45 AM</option>
  <option value="11:00 AM">11:00 AM</option>
  <option value="11:15 AM">11:15 AM</option>
  <option value="11:30 AM">11:30 AM</option>
  <option value="11:45 AM">11:45 AM</option>
  <option value="12:00 PM">12:00 PM</option>
  <option value="12:15 PM">12:15 PM</option>
  <option value="12:30 PM">12:30 PM</option>
  <option value="12:45 PM">12:45 PM</option>
  <option value="01:00 PM">01:00 PM</option>
  <option value="01:15 PM">01:15 PM</option>
  <option value="01:30 PM">01:30 PM</option>
  <option value="01:45 PM">01:45 PM</option>
  <option value="02:00 PM">02:00 PM</option>
  <option value="02:15 PM">02:15 PM</option>
  <option value="02:30 PM">02:30 PM</option>
  <option value="02:45 PM">02:45 PM</option>
  <option value="03:00 PM">03:00 PM</option>
  <option value="03:15 PM">03:15 PM</option>
  <option value="03:30 PM">03:30 PM</option>
  <option value="03:45 PM">03:45 PM</option>
  <option value="04:00 PM">04:00 PM</option>
  <option value="04:15 PM">04:15 PM</option>
  <option value="04:30 PM">04:30 PM</option>
  <option value="04:45 PM">04:45 PM</option>
  <option value="05:00 PM">05:00 PM</option>
  <option value="05:15 PM">05:15 PM</option>
  <option value="05:30 PM">05:30 PM</option>
  <option value="05:45 PM">05:45 PM</option>
  <option value="06:00 PM">06:00 PM</option>
  <option value="06:15 PM">06:15 PM</option>
  <option value="06:30 PM">06:30 PM</option>
  <option value="06:45 PM">06:45 PM</option>
  <option value="07:00 PM">07:00 PM</option>
  <option value="07:15 PM">07:15 PM</option>
  <option value="07:30 PM">07:30 PM</option>
  <option value="07:45 PM">07:45 PM</option>
  <option value="08:00 PM">08:00 PM</option>
  <option value="08:15 PM">08:15 PM</option>
  <option value="08:30 PM">08:30 PM</option>
  <option value="08:45 PM">08:45 PM</option>
  <option value="09:00 PM">09:00 PM</option>
  <option value="09:15 PM">09:15 PM</option>
</select>

<script type="text/javascript">

$('.from').on('change', function(e) {
	alert("nj");
	  var from_time = Date.parse($(this).val());

	  var from_time_adj = new Date();
	  from_time_adj.setTime(from_time.getTime() + (60 * 60 * 1000));

	  $('.to option').each(function(index, el) {
	    var to_time = Date.parse($(el).val());
	    if (to_time < from_time_adj) {
	      $(el).attr('disabled', true);
	    }
	  });
	});

	$('.to').on('change', function(e) {

	  var to_time = Date.parse($(this).val());
	  var to_time_adj = new Date();

	  to_time_adj.setTime(to_time.getTime() - (60 * 60 * 1000));
	  $('.from option').each(function(index, el) {
	    var from_time = Date.parse($(el).val());
	    if (from_time > to_time_adj) {
	      $(el).attr('disabled', true);
	    }
	  });
	});


</script>