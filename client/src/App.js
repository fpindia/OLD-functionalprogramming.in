import React, { useCallback, useEffect, useState } from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
          <p>
            Functional Programming India<br/><br/>
            <small>
              Site currently down for maintenance.<br/>
              Drop an email to the <a href="mailto:team@functionalprogramming.in">FPIndia Team</a> for any queries.
            </small>
          </p>
      </header>
    </div>
  );

}

export default App;
