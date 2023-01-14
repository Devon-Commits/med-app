import { Controller } from "@hotwired/stimulus"
import React from 'react'
import ReactDOM from 'react-dom'
import Landing from '../components/Landing'

// Connects to data-controller="react"
export default class extends Controller {
  connect() {
    console.log("React controller Connnected")

    const e = React.createElement;
    const root = ReactDOM.createRoot(document.getElementById("root"));
    root.render(e(Landing), root );
  }
}
