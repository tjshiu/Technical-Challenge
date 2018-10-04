import { Component } from 'inferno';
import './registerServiceWorker';
import './App.css';
import AppIndex from './Components/Apps/appsIndex.js'

class App extends Component {
  render() {
    return (
      <div className="App">
        <AppIndex />
      </div>
    );
  }
}

export default App;
