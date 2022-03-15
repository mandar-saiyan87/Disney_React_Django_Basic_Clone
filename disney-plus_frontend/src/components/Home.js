import React, { useState, useEffect } from "react";
import ImgSlider from "./ImgSlider";
import Viewers from "./Viewers";
import Movies from "./Movies";

// Install firebase and firebase-tools packages from npm.

function Home() {
  const [movies, setMovies] = useState([]);

  async function fetchmovies() {
    let res = await fetch("http://localhost:8000/getmovies/");
    let data = await res.json();
    setMovies(data);
  }

  useEffect(() => {
    fetchmovies();
  }, []);

  return (
    <>
      <div className="main">
        <ImgSlider />
        <Viewers />
        <Movies allmovies={movies} />
      </div>
    </>
  );
}

export default Home;
