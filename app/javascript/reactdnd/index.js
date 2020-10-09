import React from "react";
import ReactDOM from "react-dom";
import Example from "./components/example";
import { DndProvider } from "react-dnd";
import { HTML5Backend } from "react-dnd-html5-backend";

const App = () => (
  <div className="App">
    <DndProvider backend={HTML5Backend}>
      <Example />
    </DndProvider>
  </div>
);

ReactDOM.render(<App />, document.getElementById("app"));
