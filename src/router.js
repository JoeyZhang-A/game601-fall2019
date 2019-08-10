import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Schedule from './views/Schedule.vue'
import Examples from './views/Examples.vue'
import Syllabus from './views/Syllabus.vue'
import Assignments from './views/Assignments.vue'
import Reading from './views/Reading.vue'
import Protected from './views/Protected.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/schedule',
      name: 'schedule',
      component: Schedule
    },
    {
      path: '/examples',
      name: 'examples',
      component: Examples
    },
    {
      path: '/syllabus',
      name: 'syllabus',
      component: Syllabus
    },
    {
      path: '/assignments',
      name: 'assignments',
      component: Assignments
    },
    {
      path: '/protected',
      name: 'protected',
      component: Protected
    }
    //Attempting to catch bad routes
    //,{ path: "*", component: Assignments }
  ]
})
