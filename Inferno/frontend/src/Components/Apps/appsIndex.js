import { Component } from 'inferno';
import axios from 'axios';

class AppIndex extends Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        axios.get('/api/1/apps')
            .then(response => console.log(response))
            .catch(error => console.log(error));
    }

    render() {
        return (
        <div className="hello">
            <div>hiiiiii</div>
        </div>
        );
    }
}

export default AppIndex;
