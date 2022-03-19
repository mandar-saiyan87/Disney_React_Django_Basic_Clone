import React from "react";
import Detail from "./Detail";
import { Link } from "react-router-dom";

function Movies({ allmovies }) {
  return (
    <>
      <div className="movies-container">
        <h4>Recommended for You</h4>
        <div className="content">
          {allmovies.map((item) => {
            const { id, cardImg, title } = item;
            return (
              <div className="wrap-content" key={id}>
                <Link to={`/detail/${title}`}>
                  <img src={`/images/recommended/${cardImg}`} alt={title} />
                </Link>
              </div>
            );
          })}
        </div>
      </div>
    </>
  );
}

export default Movies;
