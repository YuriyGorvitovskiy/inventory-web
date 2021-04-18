import React, { useState, useEffect } from "react";
import ReactDOM from "react-dom";
import axios from "axios";
import Button from "@material-ui/core/Button";

const App = () => {
    const [url, setUrl] = useState("");
    const [name, setName] = useState("");

    useEffect(() => {
        axios.get("config.json").then(function (response) {
            setUrl(response.data.data_url);
        });
    }, []);
    const onPress = () => {
        axios.get(url).then(function (response) {
            setName(response.data.name);
        });
    };
    if (name) {
        return <h1>{name}</h1>;
    }
    if (url) {
        return (
            <Button variant="contained" color="primary" onClick={onPress}>
                Ready, Press
            </Button>
        );
    }
    return (
        <Button variant="contained" color="primary">
            Waiting
        </Button>
    );
};

ReactDOM.render(<App />, document.querySelector("#app"));
