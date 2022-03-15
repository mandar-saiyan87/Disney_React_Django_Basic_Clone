import React from "react";

function Header() {
  return (
    <>
      <div className="Nav">
        <img className="logo" src="/images/logo.svg" alt="logo" />
        <div className="navMenu">
          <a href="/">
            <img src="/images/home-icon.svg" alt="home-icon" />
            <span>HOME</span>
          </a>
          <a>
            <img src="/images/search-icon.svg" alt="search-icon" />
            <span>SEARCH</span>
          </a>
          <a>
            <img src="/images/watchlist-icon.svg" alt="watchlist-icon" />
            <span>WATCHLIST</span>
          </a>
          <a>
            <img src="/images/original-icon.svg" alt="original-icon" />
            <span>ORIGINALS</span>
          </a>
          <a>
            <img src="/images/movie-icon.svg" alt="movie-icon" />
            <span>MOVIES</span>
          </a>
          <a>
            <img src="/images/series-icon.svg" alt="series-icon" />
            <span>SERIES</span>
          </a>
        </div>
        <img
          src="/images/Webprofile_Pic.jpg"
          alt="user-img"
          className="userimg"
        />
      </div>
    </>
  );
}

export default Header;

// const Nav = styled.nav`
//   height: 70px;
//   background: #090b13;
//   display: flex;

// `;

// const Logo = styled.img`

// `;

// const NavMenu = styled.div``;
