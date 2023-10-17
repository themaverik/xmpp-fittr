%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(user_fav).

-compile(export_all).

do_decode(<<"query">>, <<"jabber:iq:user_fav">>, El,
          Opts) ->
    decode_user_fav(<<"jabber:iq:user_fav">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"query">>, <<"jabber:iq:user_fav">>}].

do_encode({user_fav, _, _, _, _, _, _, _} = Query,
          TopXMLNS) ->
    encode_user_fav(Query, TopXMLNS).

do_get_name({user_fav, _, _, _, _, _, _, _}) ->
    <<"query">>.

do_get_ns({user_fav, _, _, _, _, _, _, _}) ->
    <<"jabber:iq:user_fav">>.

get_els({user_fav,
         _to_user,
         _message_id,
         _chat_type,
         _status,
         _result_type,
         _type,
         _sub_els}) ->
    _sub_els.

set_els({user_fav,
         _to_user,
         _message_id,
         _chat_type,
         _status,
         _result_type,
         _type,
         _},
        _sub_els) ->
    {user_fav,
     _to_user,
     _message_id,
     _chat_type,
     _status,
     _result_type,
     _type,
     _sub_els}.

pp(user_fav, 7) ->
    [to_user,
     message_id,
     chat_type,
     status,
     result_type,
     type,
     sub_els];
pp(_, _) -> no.

records() -> [{user_fav, 7}].

decode_user_fav(__TopXMLNS, __Opts,
                {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, __Els} = decode_user_fav_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               <<>>,
                                               []),
    {Chat_type, Message_id, To_user, Type, Status} =
        decode_user_fav_attrs(__TopXMLNS,
                              _attrs,
                              undefined,
                              undefined,
                              undefined,
                              undefined,
                              undefined),
    {user_fav,
     To_user,
     Message_id,
     Chat_type,
     Status,
     Result_type,
     Type,
     __Els}.

decode_user_fav_els(__TopXMLNS, __Opts, [], Result_type,
                    __Els) ->
    {decode_user_fav_cdata(__TopXMLNS, Result_type),
     lists:reverse(__Els)};
decode_user_fav_els(__TopXMLNS, __Opts,
                    [{xmlcdata, _data} | _els], Result_type, __Els) ->
    decode_user_fav_els(__TopXMLNS,
                        __Opts,
                        _els,
                        <<Result_type/binary, _data/binary>>,
                        __Els);
decode_user_fav_els(__TopXMLNS, __Opts,
                    [{xmlel, _name, _attrs, _} = _el | _els], Result_type,
                    __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_user_fav_els(__TopXMLNS,
                                __Opts,
                                _els,
                                Result_type,
                                [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_user_fav_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        [_el | __Els]);
                Mod ->
                    decode_user_fav_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        [Mod:do_decode(_name,
                                                       __XMLNS,
                                                       _el,
                                                       __Opts)
                                         | __Els])
            end
    end.

decode_user_fav_attrs(__TopXMLNS,
                      [{<<"chat_type">>, _val} | _attrs], _Chat_type,
                      Message_id, To_user, Type, Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          _val,
                          Message_id,
                          To_user,
                          Type,
                          Status);
decode_user_fav_attrs(__TopXMLNS,
                      [{<<"message_id">>, _val} | _attrs], Chat_type,
                      _Message_id, To_user, Type, Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          Chat_type,
                          _val,
                          To_user,
                          Type,
                          Status);
decode_user_fav_attrs(__TopXMLNS,
                      [{<<"to_user">>, _val} | _attrs], Chat_type, Message_id,
                      _To_user, Type, Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          Chat_type,
                          Message_id,
                          _val,
                          Type,
                          Status);
decode_user_fav_attrs(__TopXMLNS,
                      [{<<"type">>, _val} | _attrs], Chat_type, Message_id,
                      To_user, _Type, Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          Chat_type,
                          Message_id,
                          To_user,
                          _val,
                          Status);
decode_user_fav_attrs(__TopXMLNS,
                      [{<<"status">>, _val} | _attrs], Chat_type, Message_id,
                      To_user, Type, _Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          Chat_type,
                          Message_id,
                          To_user,
                          Type,
                          _val);
decode_user_fav_attrs(__TopXMLNS, [_ | _attrs],
                      Chat_type, Message_id, To_user, Type, Status) ->
    decode_user_fav_attrs(__TopXMLNS,
                          _attrs,
                          Chat_type,
                          Message_id,
                          To_user,
                          Type,
                          Status);
decode_user_fav_attrs(__TopXMLNS, [], Chat_type,
                      Message_id, To_user, Type, Status) ->
    {decode_user_fav_attr_chat_type(__TopXMLNS, Chat_type),
     decode_user_fav_attr_message_id(__TopXMLNS, Message_id),
     decode_user_fav_attr_to_user(__TopXMLNS, To_user),
     decode_user_fav_attr_type(__TopXMLNS, Type),
     decode_user_fav_attr_status(__TopXMLNS, Status)}.

encode_user_fav({user_fav,
                 To_user,
                 Message_id,
                 Chat_type,
                 Status,
                 Result_type,
                 Type,
                 __Els},
                __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:user_fav">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++ encode_user_fav_cdata(Result_type, []),
    _attrs = encode_user_fav_attr_status(Status,
                                         encode_user_fav_attr_type(Type,
                                                                   encode_user_fav_attr_to_user(To_user,
                                                                                                encode_user_fav_attr_message_id(Message_id,
                                                                                                                                encode_user_fav_attr_chat_type(Chat_type,
                                                                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                          __TopXMLNS)))))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_user_fav_attr_chat_type(__TopXMLNS, undefined) ->
    <<>>;
decode_user_fav_attr_chat_type(__TopXMLNS, _val) ->
    _val.

encode_user_fav_attr_chat_type(<<>>, _acc) -> _acc;
encode_user_fav_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_user_fav_attr_message_id(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_user_fav_attr_message_id(__TopXMLNS, _val) ->
    _val.

encode_user_fav_attr_message_id(<<>>, _acc) -> _acc;
encode_user_fav_attr_message_id(_val, _acc) ->
    [{<<"message_id">>, _val} | _acc].

decode_user_fav_attr_to_user(__TopXMLNS, undefined) ->
    <<>>;
decode_user_fav_attr_to_user(__TopXMLNS, _val) -> _val.

encode_user_fav_attr_to_user(<<>>, _acc) -> _acc;
encode_user_fav_attr_to_user(_val, _acc) ->
    [{<<"to_user">>, _val} | _acc].

decode_user_fav_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_user_fav_attr_type(__TopXMLNS, _val) -> _val.

encode_user_fav_attr_type(<<>>, _acc) -> _acc;
encode_user_fav_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_user_fav_attr_status(__TopXMLNS, undefined) ->
    <<>>;
decode_user_fav_attr_status(__TopXMLNS, _val) -> _val.

encode_user_fav_attr_status(<<>>, _acc) -> _acc;
encode_user_fav_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_user_fav_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_user_fav_cdata(__TopXMLNS, _val) -> _val.

encode_user_fav_cdata(<<>>, _acc) -> _acc;
encode_user_fav_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
