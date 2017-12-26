module Models exposing (..)


type alias Model =
    { route : Route
    }


type Route
    = Home
    | Page1
    | NotFoundRoute


resetModel : Route -> Model
resetModel route =
    Model
        route
