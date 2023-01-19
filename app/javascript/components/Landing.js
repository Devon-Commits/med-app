import React from 'react'

export default function Landing() {

  const sentence = "This is React.";

  const top_heading = React.createElement("h1", {style: { color: "#36454F" }}, "Welcome to Med-Test!");
  const h_divider = React.createElement("hr", null, null);
  const intro = React.createElement("p", {style: { "font-style": "italic" }}, sentence);

  return([top_heading, h_divider, intro]);
}


