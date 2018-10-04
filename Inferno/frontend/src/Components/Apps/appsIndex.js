import { Component } from 'inferno';
import axios from 'axios';

class AppIndex extends Component {
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            apps: [],
            error: null
        };
    }

    componentDidMount() {
        axios.get('/api/1/apps/')
            .then(response => {
                let data = response.data;
                let apps = Object.keys(data).map(key => data[key]);
                this.setState({
                    isLoaded: true,
                    apps,
                });
                console.log(this.state);
            })
            .catch(error => this.setState({ isLoaded: true, error}));
    }

    render() {
        let { error, isLoaded, apps} = this.state;
        if (error) {
            return <div>Error: {error.message} </div>;
        } else if (!isLoaded) {
            return <div>Loading...</div>;
        } else {
            return (
            <div className="hello">
                <ul>
                    {apps.map(app => (
                        <li key={app.id}>
                            {app.name}
                        </li>
                    ))}
                </ul>
            </div>
            );
        }
    }
}

export default AppIndex;
