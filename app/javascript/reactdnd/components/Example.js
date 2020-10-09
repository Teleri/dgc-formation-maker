import React, { useState } from "react";
import { Container } from "./Container";

export const Example = () => {
  const [hideSourceOnDrag] = useState(true);
  return (
    <div>
      <Container hideSourceOnDrag={hideSourceOnDrag} />
    </div>
  );
};
