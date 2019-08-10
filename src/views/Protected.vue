<template>
  <div id="loginbox" class="lightbox" >
		<div class="horizontal">
			<div class="vertical">
				<div id="passwordbox" class="box">
					<input style="margin: 16px; text-align: center;" id="password" type="password" placeholder="password" /> <br />
					<button @click="loadPage" id="loginbutton" type="button">Enter</button>
					<p id="wrongPassword" style="display: none">Incorrect Password. Go to Blackboard to get it.</p>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import * as $ from 'jquery'
import {Sha1} from "./../util/sha1.js"

export default {
  name: 'Protected',
  components: {
  },
  methods: {
    loadPage() {
  		let hash = $("#password").val()
  		hash = Sha1.hash(hash)
      console.log(hash)
      let url = "/protected/" + hash + "/index.html"

      if (this.urlExists(url)) {
        window.location= url
      } else {
        $("#passwordbox").addClass("boxwrong");
        $("#wrongPassword").removeAttr("style");
      }
  	},
    urlExists(url) {
      var http = new XMLHttpRequest();
      http.open('HEAD', url, false);
      http.send();
      return http.status !== 404;
    }
  },
  created() {
    $("#loginbutton").on("click", function() {
  		loadPage($("#password").val());
  	});
  	$("#password").keypress(function(e) {
      if (e.which == 13) {
        loadPage($("#password").val());
      }
  	});
  	$("#password").focus();
  }
}

</script>


<style>
  body {

  	/* background-image: url('grunge_patterns.jpg'); */
  	background-attachment: fixed;
  	color: #333;
  }

  .box {
  	border-radius: 3px;
  	background: rgba(101, 101, 101, 0.7); margin: auto; padding: 12px;
  }

  .boxwrong {
    border-radius: 3px;
    background: rgba(255, 101, 101, 0.7); margin: auto; padding: 12px;
  }

  .lightbox {
  	zoom: 1.5;
  	position: fixed;
  	top: 0;
  	left: 0;
  	width: 100%;
  	height: 100%;
  	background: rgba(10, 10, 10, 0.8);
  	text-align: center;
  	margin: auto;

  }

  div.horizontal {
  	display: flex;
  	justify-content: center;
  	height: 100%;
  }

  div.vertical {
  	display: flex;
  	flex-direction: column;
  	justify-content: center;
  	width: 100%;
  }

  ::-webkit-input-placeholder {
     /* color: #955; */
     text-align: center;
  }

  ::-moz-placeholder {
     /* color: #955; */
     text-align: center;
  }

  :-ms-input-placeholder {
     /* color: #955; */
     text-align: center;
  }

</style>
