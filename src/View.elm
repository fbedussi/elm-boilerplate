module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Icons exposing (..)
import Json.Decode as Decode
import Models exposing (..)
import Msgs exposing (..)
import TouchEvents exposing (onTouchStart)


onLinkClick : msg -> Attribute msg
onLinkClick message =
    let
        options =
            { stopPropagation = False
            , preventDefault = True
            }
    in
    onWithOptions "click" options (Decode.succeed message)


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        Models.Home ->
            homePage model

        Models.Page1 ->
            page1

        Models.NotFoundRoute ->
            notFoundView


notFoundView : Html msg
notFoundView =
    div []
        [ text "Not found"
        ]


homePage : Model -> Html Msg
homePage model =
    div []
        [ text "home page" ]


page1 : Html Msg
page1 =
    div
        []
        [ text "page1" ]
