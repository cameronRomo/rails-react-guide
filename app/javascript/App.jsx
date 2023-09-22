import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { Home } from "./components/Home";
import { Recipes } from "./components/Recipes";
import { Recipe } from "./components/Recipe";
import { NewRecipe } from "./components/NewRecipe";

const App = () => {
  return (
    <main>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/recipes" element={<Recipes />} />
        <Route path="/recipe/:id" element={<Recipe />} />
        <Route path="/recipe" element={<NewRecipe />} />
      </Routes>
    </main>
  );
};

export default App;
