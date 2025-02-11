import { render } from "react-dom"
import h from "habits/htm_create_element"

render(
	h`<h1>Hellow world from HTM</h1>`,
	document.getElementById("root")
)