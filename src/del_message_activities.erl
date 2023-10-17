%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(del_message_activities).

-compile(export_all).

do_decode(<<"delete_message">>,
          <<"jabber:iq:del_message_activities">>, El, Opts) ->
    decode_delete_message(<<"jabber:iq:del_message_activities">>,
                          Opts,
                          El);
do_decode(<<"delete_messages">>,
          <<"jabber:iq:del_message_activities">>, El, Opts) ->
    decode_delete_messages(<<"jabber:iq:del_message_activities">>,
                           Opts,
                           El);
do_decode(<<"query">>,
          <<"jabber:iq:del_message_activities">>, El, Opts) ->
    decode_del_message_activities(<<"jabber:iq:del_message_activities">>,
                                  Opts,
                                  El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"delete_message">>,
      <<"jabber:iq:del_message_activities">>},
     {<<"delete_messages">>,
      <<"jabber:iq:del_message_activities">>},
     {<<"query">>, <<"jabber:iq:del_message_activities">>}].

do_encode({del_message_activities,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _} =
              Query,
          TopXMLNS) ->
    encode_del_message_activities(Query, TopXMLNS);
do_encode({delete_messages, _} = Delete_messages,
          TopXMLNS) ->
    encode_delete_messages(Delete_messages, TopXMLNS);
do_encode({user_activities, _, _, _, _, _} =
              Delete_message,
          TopXMLNS) ->
    encode_delete_message(Delete_message, TopXMLNS).

do_get_name({del_message_activities,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"query">>;
do_get_name({delete_messages, _}) ->
    <<"delete_messages">>;
do_get_name({user_activities, _, _, _, _, _}) ->
    <<"delete_message">>.

do_get_ns({del_message_activities,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _}) ->
    <<"jabber:iq:del_message_activities">>;
do_get_ns({delete_messages, _}) ->
    <<"jabber:iq:del_message_activities">>;
do_get_ns({user_activities, _, _, _, _, _}) ->
    <<"jabber:iq:del_message_activities">>.

get_els({del_message_activities,
         _type,
         _status,
         _to_user,
         _file_tokens,
         _delete_type,
         _delete_messages,
         _result_type,
         _sub_els}) ->
    _sub_els.

set_els({del_message_activities,
         _type,
         _status,
         _to_user,
         _file_tokens,
         _delete_type,
         _delete_messages,
         _result_type,
         _},
        _sub_els) ->
    {del_message_activities,
     _type,
     _status,
     _to_user,
     _file_tokens,
     _delete_type,
     _delete_messages,
     _result_type,
     _sub_els}.

pp(del_message_activities, 8) ->
    [type,
     status,
     to_user,
     file_tokens,
     delete_type,
     delete_messages,
     result_type,
     sub_els];
pp(delete_messages, 1) -> [delete_message];
pp(user_activities, 5) ->
    [id, to_user, type, file_token, result_type];
pp(_, _) -> no.

records() ->
    [{del_message_activities, 8},
     {delete_messages, 1},
     {user_activities, 5}].

decode_delete_message(__TopXMLNS, __Opts,
                      {xmlel, <<"delete_message">>, _attrs, _els}) ->
    Result_type = decode_delete_message_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            <<>>),
    {Id, To_user, Type, File_token} =
        decode_delete_message_attrs(__TopXMLNS,
                                    _attrs,
                                    undefined,
                                    undefined,
                                    undefined,
                                    undefined),
    {user_activities,
     Id,
     To_user,
     Type,
     File_token,
     Result_type}.

decode_delete_message_els(__TopXMLNS, __Opts, [],
                          Result_type) ->
    decode_delete_message_cdata(__TopXMLNS, Result_type);
decode_delete_message_els(__TopXMLNS, __Opts,
                          [{xmlcdata, _data} | _els], Result_type) ->
    decode_delete_message_els(__TopXMLNS,
                              __Opts,
                              _els,
                              <<Result_type/binary, _data/binary>>);
decode_delete_message_els(__TopXMLNS, __Opts,
                          [_ | _els], Result_type) ->
    decode_delete_message_els(__TopXMLNS,
                              __Opts,
                              _els,
                              Result_type).

decode_delete_message_attrs(__TopXMLNS,
                            [{<<"id">>, _val} | _attrs], _Id, To_user, Type,
                            File_token) ->
    decode_delete_message_attrs(__TopXMLNS,
                                _attrs,
                                _val,
                                To_user,
                                Type,
                                File_token);
decode_delete_message_attrs(__TopXMLNS,
                            [{<<"to_user">>, _val} | _attrs], Id, _To_user,
                            Type, File_token) ->
    decode_delete_message_attrs(__TopXMLNS,
                                _attrs,
                                Id,
                                _val,
                                Type,
                                File_token);
decode_delete_message_attrs(__TopXMLNS,
                            [{<<"type">>, _val} | _attrs], Id, To_user, _Type,
                            File_token) ->
    decode_delete_message_attrs(__TopXMLNS,
                                _attrs,
                                Id,
                                To_user,
                                _val,
                                File_token);
decode_delete_message_attrs(__TopXMLNS,
                            [{<<"file_token">>, _val} | _attrs], Id, To_user,
                            Type, _File_token) ->
    decode_delete_message_attrs(__TopXMLNS,
                                _attrs,
                                Id,
                                To_user,
                                Type,
                                _val);
decode_delete_message_attrs(__TopXMLNS, [_ | _attrs],
                            Id, To_user, Type, File_token) ->
    decode_delete_message_attrs(__TopXMLNS,
                                _attrs,
                                Id,
                                To_user,
                                Type,
                                File_token);
decode_delete_message_attrs(__TopXMLNS, [], Id, To_user,
                            Type, File_token) ->
    {decode_delete_message_attr_id(__TopXMLNS, Id),
     decode_delete_message_attr_to_user(__TopXMLNS, To_user),
     decode_delete_message_attr_type(__TopXMLNS, Type),
     decode_delete_message_attr_file_token(__TopXMLNS,
                                           File_token)}.

encode_delete_message({user_activities,
                       Id,
                       To_user,
                       Type,
                       File_token,
                       Result_type},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:del_message_activities">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_delete_message_cdata(Result_type, []),
    _attrs =
        encode_delete_message_attr_file_token(File_token,
                                              encode_delete_message_attr_type(Type,
                                                                              encode_delete_message_attr_to_user(To_user,
                                                                                                                 encode_delete_message_attr_id(Id,
                                                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                          __TopXMLNS))))),
    {xmlel, <<"delete_message">>, _attrs, _els}.

decode_delete_message_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_delete_message_attr_id(__TopXMLNS, _val) -> _val.

encode_delete_message_attr_id(<<>>, _acc) -> _acc;
encode_delete_message_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_delete_message_attr_to_user(__TopXMLNS,
                                   undefined) ->
    <<>>;
decode_delete_message_attr_to_user(__TopXMLNS, _val) ->
    _val.

encode_delete_message_attr_to_user(<<>>, _acc) -> _acc;
encode_delete_message_attr_to_user(_val, _acc) ->
    [{<<"to_user">>, _val} | _acc].

decode_delete_message_attr_type(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_delete_message_attr_type(__TopXMLNS, _val) ->
    _val.

encode_delete_message_attr_type(<<>>, _acc) -> _acc;
encode_delete_message_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_delete_message_attr_file_token(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_delete_message_attr_file_token(__TopXMLNS,
                                      _val) ->
    _val.

encode_delete_message_attr_file_token(<<>>, _acc) ->
    _acc;
encode_delete_message_attr_file_token(_val, _acc) ->
    [{<<"file_token">>, _val} | _acc].

decode_delete_message_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_delete_message_cdata(__TopXMLNS, _val) -> _val.

encode_delete_message_cdata(<<>>, _acc) -> _acc;
encode_delete_message_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_delete_messages(__TopXMLNS, __Opts,
                       {xmlel, <<"delete_messages">>, _attrs, _els}) ->
    Delete_message = decode_delete_messages_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                []),
    {delete_messages, Delete_message}.

decode_delete_messages_els(__TopXMLNS, __Opts, [],
                           Delete_message) ->
    lists:reverse(Delete_message);
decode_delete_messages_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"delete_message">>, _attrs, _} = _el
                            | _els],
                           Delete_message) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:del_message_activities">> ->
            decode_delete_messages_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       [decode_delete_message(<<"jabber:iq:del_message_activities">>,
                                                              __Opts,
                                                              _el)
                                        | Delete_message]);
        _ ->
            decode_delete_messages_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Delete_message)
    end;
decode_delete_messages_els(__TopXMLNS, __Opts,
                           [_ | _els], Delete_message) ->
    decode_delete_messages_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Delete_message).

encode_delete_messages({delete_messages,
                        Delete_message},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:del_message_activities">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_delete_messages_$delete_message'(Delete_message,
                                                               __NewTopXMLNS,
                                                               [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"delete_messages">>, _attrs, _els}.

'encode_delete_messages_$delete_message'([], __TopXMLNS,
                                         _acc) ->
    _acc;
'encode_delete_messages_$delete_message'([Delete_message
                                          | _els],
                                         __TopXMLNS, _acc) ->
    'encode_delete_messages_$delete_message'(_els,
                                             __TopXMLNS,
                                             [encode_delete_message(Delete_message,
                                                                    __TopXMLNS)
                                              | _acc]).

decode_del_message_activities(__TopXMLNS, __Opts,
                              {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, Delete_messages, __Els} =
        decode_del_message_activities_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          <<>>,
                                          [],
                                          []),
    {Type, Delete_type, To_user, File_tokens, Status} =
        decode_del_message_activities_attrs(__TopXMLNS,
                                            _attrs,
                                            undefined,
                                            undefined,
                                            undefined,
                                            undefined,
                                            undefined),
    {del_message_activities,
     Type,
     Status,
     To_user,
     File_tokens,
     Delete_type,
     Delete_messages,
     Result_type,
     __Els}.

decode_del_message_activities_els(__TopXMLNS, __Opts,
                                  [], Result_type, Delete_messages, __Els) ->
    {decode_del_message_activities_cdata(__TopXMLNS,
                                         Result_type),
     lists:reverse(Delete_messages),
     lists:reverse(__Els)};
decode_del_message_activities_els(__TopXMLNS, __Opts,
                                  [{xmlcdata, _data} | _els], Result_type,
                                  Delete_messages, __Els) ->
    decode_del_message_activities_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      <<Result_type/binary, _data/binary>>,
                                      Delete_messages,
                                      __Els);
decode_del_message_activities_els(__TopXMLNS, __Opts,
                                  [{xmlel, <<"delete_messages">>, _attrs, _} =
                                       _el
                                   | _els],
                                  Result_type, Delete_messages, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:del_message_activities">> ->
            decode_del_message_activities_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              Result_type,
                                              [decode_delete_messages(<<"jabber:iq:del_message_activities">>,
                                                                      __Opts,
                                                                      _el)
                                               | Delete_messages],
                                              __Els);
        _ ->
            decode_del_message_activities_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              Result_type,
                                              Delete_messages,
                                              [_el | __Els])
    end;
decode_del_message_activities_els(__TopXMLNS, __Opts,
                                  [{xmlel, _name, _attrs, _} = _el | _els],
                                  Result_type, Delete_messages, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_del_message_activities_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              Result_type,
                                              Delete_messages,
                                              [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_del_message_activities_els(__TopXMLNS,
                                                      __Opts,
                                                      _els,
                                                      Result_type,
                                                      Delete_messages,
                                                      [_el | __Els]);
                Mod ->
                    decode_del_message_activities_els(__TopXMLNS,
                                                      __Opts,
                                                      _els,
                                                      Result_type,
                                                      Delete_messages,
                                                      [Mod:do_decode(_name,
                                                                     __XMLNS,
                                                                     _el,
                                                                     __Opts)
                                                       | __Els])
            end
    end.

decode_del_message_activities_attrs(__TopXMLNS,
                                    [{<<"type">>, _val} | _attrs], _Type,
                                    Delete_type, To_user, File_tokens,
                                    Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        _val,
                                        Delete_type,
                                        To_user,
                                        File_tokens,
                                        Status);
decode_del_message_activities_attrs(__TopXMLNS,
                                    [{<<"delete_type">>, _val} | _attrs], Type,
                                    _Delete_type, To_user, File_tokens,
                                    Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        Type,
                                        _val,
                                        To_user,
                                        File_tokens,
                                        Status);
decode_del_message_activities_attrs(__TopXMLNS,
                                    [{<<"to_user">>, _val} | _attrs], Type,
                                    Delete_type, _To_user, File_tokens,
                                    Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        Type,
                                        Delete_type,
                                        _val,
                                        File_tokens,
                                        Status);
decode_del_message_activities_attrs(__TopXMLNS,
                                    [{<<"file_tokens">>, _val} | _attrs], Type,
                                    Delete_type, To_user, _File_tokens,
                                    Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        Type,
                                        Delete_type,
                                        To_user,
                                        _val,
                                        Status);
decode_del_message_activities_attrs(__TopXMLNS,
                                    [{<<"status">>, _val} | _attrs], Type,
                                    Delete_type, To_user, File_tokens,
                                    _Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        Type,
                                        Delete_type,
                                        To_user,
                                        File_tokens,
                                        _val);
decode_del_message_activities_attrs(__TopXMLNS,
                                    [_ | _attrs], Type, Delete_type, To_user,
                                    File_tokens, Status) ->
    decode_del_message_activities_attrs(__TopXMLNS,
                                        _attrs,
                                        Type,
                                        Delete_type,
                                        To_user,
                                        File_tokens,
                                        Status);
decode_del_message_activities_attrs(__TopXMLNS, [],
                                    Type, Delete_type, To_user, File_tokens,
                                    Status) ->
    {decode_del_message_activities_attr_type(__TopXMLNS,
                                             Type),
     decode_del_message_activities_attr_delete_type(__TopXMLNS,
                                                    Delete_type),
     decode_del_message_activities_attr_to_user(__TopXMLNS,
                                                To_user),
     decode_del_message_activities_attr_file_tokens(__TopXMLNS,
                                                    File_tokens),
     decode_del_message_activities_attr_status(__TopXMLNS,
                                               Status)}.

encode_del_message_activities({del_message_activities,
                               Type,
                               Status,
                               To_user,
                               File_tokens,
                               Delete_type,
                               Delete_messages,
                               Result_type,
                               __Els},
                              __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:del_message_activities">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse(encode_del_message_activities_cdata(Result_type,
                                                                 'encode_del_message_activities_$delete_messages'(Delete_messages,
                                                                                                                  __NewTopXMLNS,
                                                                                                                  []))),
    _attrs =
        encode_del_message_activities_attr_status(Status,
                                                  encode_del_message_activities_attr_file_tokens(File_tokens,
                                                                                                 encode_del_message_activities_attr_to_user(To_user,
                                                                                                                                            encode_del_message_activities_attr_delete_type(Delete_type,
                                                                                                                                                                                           encode_del_message_activities_attr_type(Type,
                                                                                                                                                                                                                                   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                              __TopXMLNS)))))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_del_message_activities_$delete_messages'([],
                                                 __TopXMLNS, _acc) ->
    _acc;
'encode_del_message_activities_$delete_messages'([Delete_messages
                                                  | _els],
                                                 __TopXMLNS, _acc) ->
    'encode_del_message_activities_$delete_messages'(_els,
                                                     __TopXMLNS,
                                                     [encode_delete_messages(Delete_messages,
                                                                             __TopXMLNS)
                                                      | _acc]).

decode_del_message_activities_attr_type(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_del_message_activities_attr_type(__TopXMLNS,
                                        _val) ->
    _val.

encode_del_message_activities_attr_type(<<>>, _acc) ->
    _acc;
encode_del_message_activities_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_del_message_activities_attr_delete_type(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_del_message_activities_attr_delete_type(__TopXMLNS,
                                               _val) ->
    _val.

encode_del_message_activities_attr_delete_type(<<>>,
                                               _acc) ->
    _acc;
encode_del_message_activities_attr_delete_type(_val,
                                               _acc) ->
    [{<<"delete_type">>, _val} | _acc].

decode_del_message_activities_attr_to_user(__TopXMLNS,
                                           undefined) ->
    <<>>;
decode_del_message_activities_attr_to_user(__TopXMLNS,
                                           _val) ->
    _val.

encode_del_message_activities_attr_to_user(<<>>,
                                           _acc) ->
    _acc;
encode_del_message_activities_attr_to_user(_val,
                                           _acc) ->
    [{<<"to_user">>, _val} | _acc].

decode_del_message_activities_attr_file_tokens(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_del_message_activities_attr_file_tokens(__TopXMLNS,
                                               _val) ->
    _val.

encode_del_message_activities_attr_file_tokens(<<>>,
                                               _acc) ->
    _acc;
encode_del_message_activities_attr_file_tokens(_val,
                                               _acc) ->
    [{<<"file_tokens">>, _val} | _acc].

decode_del_message_activities_attr_status(__TopXMLNS,
                                          undefined) ->
    <<>>;
decode_del_message_activities_attr_status(__TopXMLNS,
                                          _val) ->
    _val.

encode_del_message_activities_attr_status(<<>>, _acc) ->
    _acc;
encode_del_message_activities_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_del_message_activities_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_del_message_activities_cdata(__TopXMLNS, _val) ->
    _val.

encode_del_message_activities_cdata(<<>>, _acc) -> _acc;
encode_del_message_activities_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
