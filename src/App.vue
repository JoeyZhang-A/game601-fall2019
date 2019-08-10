<template>
  <div id="app">
    <div id="nav" class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">GAME 601 - Game Prototyping</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item" @click="navClicked">
            <router-link class="nav-link" to="/syllabus">Syllabus</router-link>
          </li>
          <li class="nav-item" @click="navClicked">
            <router-link class="nav-link" to="/schedule">Schedule</router-link>
          </li>
          <li class="nav-item" @click="navClicked">
            <router-link class="nav-link" to="/examples">Examples</router-link>
          </li>
          <li class="nav-item" @click="navClicked">
            <router-link class="nav-link" to="/assignments">Assignments</router-link>
          </li>
          <li class="nav-item" @click="navClicked">
            <router-link class="nav-link" to="/protected">Reading</router-link>
          </li>
        </ul>
      </div>
    </nav>
  </div>
  <router-view/>
  </div>
</template>

<script>
import * as $ from 'jquery'
export default {

  name: "App",
  props: [
  ],
  data() {
    return {}
  },
  components: {
  },
  methods: {
    navClicked(e) {
      $( '#nav .navbar-nav' ).find( 'li.active' ).removeClass( 'active' )
      $( e.target ).parent( 'li' ).addClass( 'active' )
    }
  },
  computed: {
  },
  created() {
  }
};
</script>

<style>

</style>
