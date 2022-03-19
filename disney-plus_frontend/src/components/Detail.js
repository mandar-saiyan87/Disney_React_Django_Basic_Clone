import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

function Detail() {
  const { title } = useParams();
  const [details, setDetails] = useState({});

  async function getDetails() {
    let res = await fetch("http://localhost:8000/getmovies/" + title);
    let movieData = await res.json();
    setDetails(movieData);
  }

  useEffect(() => {
    getDetails();
  }, []);

  return (
    <>
      <div className="detailContainer">
        <div className="background">
          <img src={`/images/backimg/${details.backgrdImg}`} alt="dsmom" />
        </div>
        <div className="controls">
          <div className="play">
            <img src="/images/play-icon-black.png" alt="play" />
            <span>PLAY</span>
          </div>
          <div className="play trailer">
            <img src="/images/play-icon-white.png" alt="trailer" />
            <span>TRAILER</span>
          </div>
          <div className="trailer add">
            <span>+</span>
          </div>
          <div className="trailer group-watch">
            <img src="/images/group-icon.png" alt="grp-watch" />
          </div>
        </div>
        <div className="subtitle">{details.subtitle}</div>
        <div className="description">{details.description}</div>
      </div>
    </>
  );
}

export default Detail;
