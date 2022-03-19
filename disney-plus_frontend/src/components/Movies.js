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

// <>
//   <div className="movies-container">
//     <h4>Recommended for You</h4>
//     <div className="content">
//       <div className="wrap-content">
//         <a href="/detail">
//           <img src="/images/recommended/dsmom-poster.jpg" alt="dsmom" />
//         </a>
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/wandavision.jpg" alt="wandavision" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/sotg.jpg" alt="storyofgod" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/mandalorian.jpg" alt="starwars" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/cosmos.jpg" alt="csto" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/loki.jpg" alt="loki" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/batb.jpg" alt="batb" />
//       </div>
//       <div className="wrap-content">
//         <img src="/images/recommended/genious.jpg" alt="genius" />
//       </div>
//     </div>
//   </div>
// </>;

// <>
//   <div className="movies-container">
//     <h4>Recommended for You</h4>
//     <div className="content">
//       {allmovies.map((item) => {
//         const {
//           id,
//           backgrdImg,
//           cardImg,
//           description,
//           subtitle,
//           title,
//           titleImg,
//         } = item;
//         return (
//           <div className="wrap-content" key={id}>
//             <a href="/detail">
//               <img src="https://ibb.co/X4KVwwW" alt={title} />
//             </a>
//           </div>
//         );
//       })}
//     </div>
//   </div>
// </>

// state={{ data: item }}
