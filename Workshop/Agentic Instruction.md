## Build a product recommendation chatbot with Amazon Bedrock Agents

This workshop will go through how to build a chatbot for e-commerce applications. By leveraging Amazon Bedrock Agents, you can easily configure your e-commerce APIs so that the chatbot can use them to run tasks for the user based on the discussion.

The target audience for this workshop is solution architects, software designers, and developers. Previous AI/ML knowledge is not required; more information on Generative AI concepts can be found on AWS Generative AI  web page.

The Labs in this workshop is expected to take around 1 hour to complete. This workshop is designed to be run in US West (Oregon) AWS region (us-west-2).

## Architecture

The workshop follows a serverless architecture of Amazon Bedrock, calling AWS Lambda functions which do some actions on a set of Amazon DynamoDB tables, and utilizing Knowledge 
Bases for Amazon Bedrock to incorporate data from files in Amazon Simple Storage Service (Amazon S3)

<img width="700" height="278" alt="image" src="https://github.com/user-attachments/assets/a7fd64e3-27d3-4b28-8912-ed0e30d639ff" />

## Explore Products

In this section you will create a recommender chatbot using Amazon Bedrock Agents, it helps users describe who do they want to buy the gift for and the relevant occasion, and it automatically queries an API in the form of an AWS Lambda function that is getting product information from an Amazon DynamoDB table. The agent automatically changes the API inputs to filter products based on its discussion with the user, it will ask clarifying questions to be able to determine as much inputs as possible, and at the end tries to respond with the most relevant products that are available in the DynamoDB table.

The chatbot will leverage the Lambda function API to retrieve product details based on user preferences such as gender, occasion, and category.

The workshop setup section created an Amazon DynamoDB table named producttableandapi-ws-Products-XXXX with the following attributes: product_name (partition key), category, gender, and occasion. It also defines a Global Secondary Index for each of these attributes to enable efficient querying.

Additionally, it created a Lambda function named GetProductDetailsFunction that acts as an API for retrieving product details, This Lambda function accepts query parameters such as category, gender, and occasion. It constructs a filter expression based on the provided parameters and scans the DynamoDB table to retrieve matching products. If no parameters are provided, it returns all products in the table. It has also created another Lambda function called PopulateProductsTableFunction that generate sample data to be put in the products table.

The “PopulateProductsTableFunction” has been executed already to add 100 sample product entries in the products DynamoDB table, with random combinations of product names, descriptions, categories, genders, and occasions.


## Create an Agent

- Create an Agent from [Amazon Bedrock](https://console.aws.amazon.com/bedrock/home?region=us-west-2#/agents)

<img width="1358" height="511" alt="image" src="https://github.com/user-attachments/assets/cbb1ccc5-b0f0-4041-a4da-42236482008a" />

- Select `Anthropic Claude Sonnet 4.5` as the model, deselect the 'Bedrock Agent Optimized' checkbox to see it

<img width="1347" height="599" alt="image" src="https://github.com/user-attachments/assets/43f0d6dc-6a78-41d1-b722-5d6228cac249" />

- Select Use an existing service role as the Agent resource role, then select the role starting with producttableandapi-ws-IAMRole00AmazonBedrock

- use the following as the instructions for the agent:
  
```
you are a product recommendations agent for gift products, the user is trying to buy a gift for someone and you are trying to help identify the best products based on the filters in the action groups, ask questions to identify at least one of the input filters, gender, category or occasion.
do not recommend any products that are not retrieved from the products API.
do not ask about the gender if it is obvious from the user input already.
Always start by getting the full list of products from the API so you can know the proper filter values to be used in the API parameters.
always use a single value for each filter field, and adhere to the filtration values based on the first API call.
And never tell the user about the API and its details.

```

<img width="1362" height="568" alt="image" src="https://github.com/user-attachments/assets/bb60d3a3-6aad-4281-8ab9-e8ad12e8c255" />

<img width="1062" height="466" alt="image" src="https://github.com/user-attachments/assets/634750ad-23fe-47cc-a01e-0de6d2e643ae" />

## Add Action Group

<img width="1364" height="513" alt="image" src="https://github.com/user-attachments/assets/bc35c16f-50df-4e85-a426-009d80b04cda" />

<img width="1357" height="497" alt="image" src="https://github.com/user-attachments/assets/c60aba2f-12aa-4b3e-be52-f88c91b16285" />

- Choose ‘Define Via inline schema editor’ for Action Group Schema:

<img width="1365" height="504" alt="image" src="https://github.com/user-attachments/assets/f1af555f-23b3-44d3-9b09-d4381e5c6ae4" />

And Use the following OpenAPI schema in the in-line OpenAPI schema section:

```
{
  "openapi": "3.0.0",
  "info": {
    "title": "Product Details API",
    "version": "1.0.0",
    "description": "This API retrieves product information. Filtering parameters are passed as query strings. If query strings are empty, it performs a full scan and retrieves the full product list."
  },
  "paths": {
    "/products": {
      "get": {
        "summary": "Retrieve product details",
        "description": "Retrieves a list of products based on the provided query string parameters. If no parameters are provided, it returns the full list of products.",
        "operationId":"getProducts",
        "parameters": [
          {
            "name": "product_name",
            "in": "query",
            "description": "Retrieve details for a specific product",
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "category",
            "in": "query",
            "description": "Filter products by category",
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "gender",
            "in": "query",
            "description": "Filter products by gender",
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "occasion",
            "in": "query",
            "description": "Filter products by occasion",
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Successful response",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "product_name": {
                        "type": "string"
                      },
                      "category": {
                        "type": "string"
                      },
                      "gender": {
                        "type": "string"
                      },
                      "occasion": {
                        "type": "string"
                      },
                      "product_description": {
                        "type": "string"
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

```

## Test Agent

- Choose “Create” to create the action group, then on the Agent builder page, Choose “Save” and then “Prepare” on the top of the page. then you can use the
 ‘Test Agent’ section on the right to start testing having conversations with the chatbot

<img width="1365" height="562" alt="image" src="https://github.com/user-attachments/assets/63c44b0e-9e73-411d-af05-c21f9a848115" />


<img width="1354" height="528" alt="image" src="https://github.com/user-attachments/assets/5ba8950f-a8d4-47fb-98d3-0bb6e10ad333" />


## Cart Action

In this section you will add 2 more functionalities to the agent, adding an item to a shopping cart, and getting shopping cart information.

The chatbot will leverage 2 APIs in the form of Lambda functions called GetCartFunction and AddToCartFunction, which will get the cart details and add a product to the `producttableandapi-ws-Cart-XXXXX` DynamoDB table. Those components were created already for you as part of the workshop Cloudformation Setup.

The `producttableandapi-ws-Cart-XXXXX` DynamoDB table holds 2 attributes, user_id and product_name.

## Edit Builder

- Now that you know the infrastructure of the cart functionalities, we need to update the agent to be able to use the new APIs. You will now update the agent to ask the user if they want to add a product to the cart, after they recommend any product(s), in order to get a user ID to add to the cart the agent will ask the user once to enter their email id

<img width="1359" height="511" alt="image" src="https://github.com/user-attachments/assets/0a767156-fb68-40ff-af88-ad106f67ffe8" />


- Use the following as the updated instructions for the agent:

```
you are a product recommendations agent for gift products, the user is trying to buy a gift for someone and you are trying to help identify the best products based on the filters in the action groups, ask questions to identify at least one of the input filters, gender, category or occasion.
do not recommend any products that are not retrieved from the products API.
do not ask about the gender if it is obvious from the user input already.
Always start by getting the full list of products from the API so you can know the proper filter values to be used in the API parameters.
always use a single value for each filter field, and adhere to the filtration values based on the first API call.
And never tell the user about the API and its details.
After recommending products ask the user if they want to add any products to the cart, then use the add to cart API to add it, ask the user about his email and use it as user id and use it along the whole conversation and in any cart API calls, reply to the user with the user id after first cart addition to be used in later additions.
after adding an item to the cart, retrieve the cart items from the get cart API and display it to the user, the user can ask about the items in the cart at any time, use the get cart api to answer that.

```

## Add a New Action Group

```get-cart```

```
{
  "openapi": "3.0.0",
  "info": {
    "title": "Get Cart API",
    "version": "1.0.0",
    "description": "This API retrieves the items in a user's cart."
  },
  "paths": {
    "/cart": {
      "get": {
        "summary": "Get the user's cart",
        "description": "Retrieves the list of products in the user's cart.",
        "operationId":"getCart",
        "parameters": [
          {
            "name": "userId",
            "in": "query",
            "description": "The ID of the user",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Successful response",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "product_name": {
                        "type": "string"
                      }
                    }
                  }
                }
              }
            }
          },
          "400": {
            "description": "Bad Request",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string"
                }
              }
            }
          }
        }
      }
    }
  }
}

```


Choose “Create” to create the action group.

Add another Action Group in the Action Groups section, Choose “Add” to add an Action Group to enable the Agent to invoke the AddToCartFunction Lambda Function, put the name as add-item-to-cart and choose Action Group Type “Define with API Schemas”:


<img width="1355" height="505" alt="image" src="https://github.com/user-attachments/assets/2d2bb7c6-2e82-4740-897f-05d0cf6595cc" />


## Integration with Amazon Personalize

In this section you will add one more functionality to the agent, which is adding simulated integration to Amazon Personalize .

Amazon Personalize is A fully managed Machine Learning (ML) service that uses your data to generate item recommendations for your users. It Makes it easy for developers to build applications with a wide array of personalization use cases and automates many of the complicated steps to build, train, and deploy a ML model.
And is Powered by the same ML technology used by Amazon.com – no ML expertise required.

This section aims to Leverage Amazon Personalize in the Increase Average Cart Size use case, To surface relevant items, promotions, and trending items that are likely to increase the overall order value during shopping, browsing, or at checkout. Reduce cart abandonment rates and avoid losing customers to digital browsing fatigue.

The chatbot will leverage an API that simulates "Customers who Bought x also Bought y" recommendation from Amazon Personalize, this is in the form of a Lambda functions called GetPersonalizeRecommendationFunction, which will recommend a product which was bought by other customers at the same cart as the input product, 
the input product being the one just added to the cart by the agent. The Lambda Function was created already for you as part of the workshop Cloudformation Setup.

## Edit Agent

Now that you know the infrastructure of the Integration with Amazon Personalize, we need to update the agent to be able to use the new API. You will now update the agent instructions to call the get personalize recommendation API once the user chooses to add any product to the cart, using the product name to get a recommended product which was bought by other customers while buying this item.


## Adding Gift Wrapping Knowledge base

In this section you will add one more functionality to the agent, which is adding the ability to generate ideas for gift wrapping based on a knowledge base using Knowledge Bases for Amazon Bedrock .

With Knowledge Bases for Amazon Bedrock, you can give FMs and agents contextual information from your company’s private data sources for RAG to deliver more relevant, accurate, and customized responses.

To equip foundation models (FMs) with up-to-date and proprietary information, organizations use Retrieval Augmented Generation (RAG), a technique that fetches data from company data sources and enriches the prompt to provide more relevant and accurate responses. Knowledge Bases for Amazon Bedrock is a fully managed capability that helps you implement the entire RAG workflow from ingestion to retrieval and prompt augmentation without having to build custom integrations to data sources and manage data flows

This section aims to Leverage Knowledge Bases for Amazon Bedrock to enhance user experience and increase loyalty by providing meaningful gift wrapping ideas.

The chatbot will leverage a Knowledge Base that was already provisioned for you as part of this workshop, having the data source as Amazon S3 bucket which contains the following file


## Synchronize the Knowledge Base data source

- Go to the Knowledge Bases for Amazon Bedrock  console.

- Choose the 'GiftWrappingKnowledgeBase'

<img width="1365" height="571" alt="image" src="https://github.com/user-attachments/assets/bb3ec49a-92af-45a0-b375-ee9765329f5b" />

## Edit Agent

```

you are a product recommendations agent for gift products, the user is trying to buy a gift for someone and you are trying to help identify the best products based on the filters in the action groups, ask questions to identify at least one of the input filters, gender, category or occasion.
do not recommend any products that are not retrieved from the products API.
do not ask about the gender if it is obvious from the user input already.
Always start by getting the full list of products from the API so you can know the proper filter values to be used in the API parameters.
always use a single value for each filter field, and adhere to the filtration values based on the first API call.
And never tell the user about the API and its details.
After recommending products ask the user if they want to add any products to the cart, then use the add to cart API to add it, ask the user about his email and use it as user id and use it along the whole conversation and in any cart API calls, reply to the user with the user id after first cart addition to be used in later additions.
before item addition to the cart, use the get personalize recommendation API to get products other customer has bought based on the product that you just added to the cart, recommend that to the user by telling them that other customers also bought this along with the product that you just added and ask if they want to also add it to the cart as well.
after adding an item to the cart, retrieve the cart items from the get cart API and display it to the user, the user can ask about the items in the cart at any time, use the get cart api to answer that.
Before the end of the conversation ask the user if they want you to suggest gift wrapping ideas for the products in the cart, and get the wrapping ideas based on the gift wrapping knowledge base.


```

<img width="1356" height="479" alt="image" src="https://github.com/user-attachments/assets/bffc7c11-fb97-405e-b1da-bb24173d33bd" />
