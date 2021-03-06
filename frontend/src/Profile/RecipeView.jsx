import React from 'react';
import { AxiosRequests } from '../api';
import { Account } from '../models';
import { Link } from 'react-router-dom';
import { Button } from 'react-bootstrap';
import { DeleteTwoTone } from '@ant-design/icons';
import { notification } from 'antd';

export class RecipeView extends React.Component {

    recipeRequests = new AxiosRequests;

    state = {
        recipes: []
    }

    handleDeleteRecipe(recipeName) {
        notification.open({
            key: "delete",
            message: `Are you sure you want to delete your recipe ${recipeName} from your profile?`,
            duration: 0,
            btn: <button type="button" className="btn btn-primary" size="small" onClick={e => { 
                    this.onDelete(recipeName);
                    notification.close("delete"); }}>Confirm</button>
        })
    }

    onDelete(recipeName) {
        let account = JSON.parse(sessionStorage.getItem("account"));
        this.recipeRequests.deleteRecipe(account.username, account.userId, recipeName)
        .then(() => {
            this.setState({ 
                recipes: this.state.recipes.filter(x => x.recipeName !== recipeName)
            });
            notification.success({
                message: 'Recipe Removed!',
                placement: 'bottomRight'
            });
        })
    }

    createRecipe() {
        let recipeName = prompt("Please enter a name for the new recipe", "");

        if (recipeName == null || recipeName == "") {
            notification.error({
                message: 'Addition Cancelled!',
                placement: 'bottomRight'
            });
        }
        else {
            let account = JSON.parse(sessionStorage.getItem("account"));
            this.recipeRequests.createRecipe(account.username, account.userId, recipeName)
            .then(() => {
                let recipeList = this.state.recipes;
                recipeList.push({recipeName: recipeName});
                this.setState({ 
                    recipes: recipeList
                });
                notification.success({
                    message: 'Recipe Added!',
                    placement: 'bottomRight'
                });
            })
        }
    }

    render() {
        return <div className="container">
            <div className="card p-2">
                <p className="card-header">
                    <span className="h4">My Recipes ({this.state.recipes.length})</span>
                    <Button className="btn float-right" id="buttonRules" type="button" onClick={e => this.createRecipe()}>
                        Add a Recipe
                    </Button>
                </p>
                <ul className="list-group">
                    { !this.state.recipes.length && (
                        <li className="list-group-item">
                            You don't have any recipes!
                        </li>)
                    }
                    {
                        this.state.recipes.length && this.state.recipes.map((p, i) => 
                            <li className="list-group mt-2" key={ i } id="group">
                                <div id = "profileCard" className=" list-group-item">
                                    { i + 1 }. { p.recipeName }
                                    <button type="button"
                                            className="btn btn-sm btn-danger float-right"
                                            onClick={ e => this.handleDeleteRecipe(p.recipeName) }>
                                        <DeleteTwoTone className="align-middle" twoToneColor="#a8a8a8"/>
                                    </button>
                                </div>
                                <div>
                                    <Link id ="recipeButton" className="btn m-1" to={`/${sessionStorage.getItem("username")}/recipes/${ p.recipeName }`}>Edit { p.recipeName }'s' Recipe</Link>
                                    {/* <textarea id="hidden" class="js-copytextarea" rows="1" cols="1">{ window.location.href }</textarea>
                                    <Button id = "shareButton" className="btn m-1 float-right" type="button" onClick={ e => { 
                                        let copyText = document.querySelector('.js-copytextarea');
                                        copyText.select();
                                        document.execCommand("copy");
                                        notification.info({
                                            message: 'Link Copied to Clipboard!',
                                            placement: 'bottomRight'
                                        }); } }>
                                        Share this Recipe
                                    </Button> */}
                                </div>  
                            </li>)
                    }
                </ul>
                <Link className="btn btn-secondary btn-block mt-2" to={`/${sessionStorage.getItem("username")}`}>
                    Return to Profile
                </Link>
            </div>
        </div>
    }

    componentDidMount() {
        let account = JSON.parse(sessionStorage.getItem("account"));
        this.recipeRequests.getAccountRecipes(account.username, account.userId)
            .then(recipes => this.setState({ recipes }));    
    }
}

export default RecipeView;