import { render } from 'inferno';
import App from './App';
import './index.css';

console.log(document.getElementById('root'))
render(<App />, document.getElementById('app'));
