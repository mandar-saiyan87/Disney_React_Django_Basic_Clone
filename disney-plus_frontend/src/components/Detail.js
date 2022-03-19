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

//  <>
//    <div className="detailContainer">
//      <div className="background">
//        <img src="/images/dsmom-bg.jpg" alt="dsmom" />
//      </div>
//      <div className="imageTitle">
//        <img src="/images/dsmom-logo.webp" alt="logo" />
//      </div>
//      <div className="controls">
//        <div className="play">
//          <img src="/images/play-icon-black.png" alt="play" />
//          <span>PLAY</span>
//        </div>
//        <div className="play trailer">
//          <img src="/images/play-icon-white.png" alt="trailer" />
//          <span>TRAILER</span>
//        </div>
//        <div className="trailer add">
//          <span>+</span>
//        </div>
//        <div className="trailer group-watch">
//          <img src="/images/group-icon.png" alt="grp-watch" />
//        </div>
//      </div>
//      <div className="subtitle">
//        2022 • 2m • Superhero, Action, Adventure, Fantasy • U/A 13+
//      </div>
//      <div className="description">
//        Dr. Stephen Strange casts a forbidden spell that opens the door to the
//        multiverse, including an alternate version of himself, whose threat to
//        humanity is too great for the combined forces of Strange, Wong, and Wanda
//        Maximoff.
//      </div>
//    </div>
//  </>;
