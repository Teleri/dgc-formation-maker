import React from "react";
import { useDrag } from "react-dnd";
import { ItemTypes } from "./ItemTypes";

const style = {
  position: "absolute",
  border: "1px solid black",
  backgroundColor: "red",
  borderRadius: "50px",
  height: "70px",
  width: "70px",
  cursor: "move",
};
export const Box = ({ id, left, top, hideSourceOnDrag, children }) => {
  const [{ isDragging }, drag] = useDrag({
    item: { id, left, top, type: ItemTypes.BOX },
    collect: (monitor) => ({
      isDragging: monitor.isDragging(),
    }),
  });
  if (isDragging && hideSourceOnDrag) {
    return <div ref={drag} />;
  }
  return (
    <div ref={drag} style={{ ...style, left, top }}>
      {children}
    </div>
  );
};
