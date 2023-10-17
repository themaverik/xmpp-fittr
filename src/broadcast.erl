%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(broadcast).

-compile(export_all).

do_decode(<<"participant">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_participant(<<"jabber:iq:mod_broadcast">>,
                                 Opts,
                                 El);
do_decode(<<"participants">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_participants(<<"jabber:iq:mod_broadcast">>,
                                  Opts,
                                  El);
do_decode(<<"broadcastid">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_id(<<"jabber:iq:mod_broadcast">>,
                        Opts,
                        El);
do_decode(<<"broadcastname">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_name(<<"jabber:iq:mod_broadcast">>,
                          Opts,
                          El);
do_decode(<<"broadcast_user">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_user(<<"jabber:iq:mod_broadcast">>,
                          Opts,
                          El);
do_decode(<<"users">>, <<"jabber:iq:mod_broadcast">>,
          El, Opts) ->
    decode_broadcast_users(<<"jabber:iq:mod_broadcast">>,
                           Opts,
                           El);
do_decode(<<"broadcast">>,
          <<"jabber:iq:mod_broadcast">>, El, Opts) ->
    decode_broadcast_tag(<<"jabber:iq:mod_broadcast">>,
                         Opts,
                         El);
do_decode(<<"query">>, <<"jabber:iq:mod_broadcast">>,
          El, Opts) ->
    decode_query_broadcast(<<"jabber:iq:mod_broadcast">>,
                           Opts,
                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"participant">>, <<"jabber:iq:mod_broadcast">>},
     {<<"participants">>, <<"jabber:iq:mod_broadcast">>},
     {<<"broadcastid">>, <<"jabber:iq:mod_broadcast">>},
     {<<"broadcastname">>, <<"jabber:iq:mod_broadcast">>},
     {<<"broadcast_user">>, <<"jabber:iq:mod_broadcast">>},
     {<<"users">>, <<"jabber:iq:mod_broadcast">>},
     {<<"broadcast">>, <<"jabber:iq:mod_broadcast">>},
     {<<"query">>, <<"jabber:iq:mod_broadcast">>}].

do_encode({query, _, _, _, _, _} = Query, TopXMLNS) ->
    encode_query_broadcast(Query, TopXMLNS);
do_encode({broadcast, _, _, _, _, _, _, _, _, _, _} =
              Broadcast,
          TopXMLNS) ->
    encode_broadcast_tag(Broadcast, TopXMLNS);
do_encode({users, _} = Users, TopXMLNS) ->
    encode_broadcast_users(Users, TopXMLNS);
do_encode({buser, _} = Broadcast_user, TopXMLNS) ->
    encode_broadcast_user(Broadcast_user, TopXMLNS);
do_encode({broadcastname, _} = Broadcastname,
          TopXMLNS) ->
    encode_broadcast_name(Broadcastname, TopXMLNS);
do_encode({broadcastid, _} = Broadcastid, TopXMLNS) ->
    encode_broadcast_id(Broadcastid, TopXMLNS);
do_encode({participants, _} = Participants, TopXMLNS) ->
    encode_broadcast_participants(Participants, TopXMLNS);
do_encode({participant, _} = Participant, TopXMLNS) ->
    encode_broadcast_participant(Participant, TopXMLNS).

do_get_name({broadcast,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"broadcast">>;
do_get_name({broadcastid, _}) -> <<"broadcastid">>;
do_get_name({broadcastname, _}) -> <<"broadcastname">>;
do_get_name({buser, _}) -> <<"broadcast_user">>;
do_get_name({participant, _}) -> <<"participant">>;
do_get_name({participants, _}) -> <<"participants">>;
do_get_name({query, _, _, _, _, _}) -> <<"query">>;
do_get_name({users, _}) -> <<"users">>.

do_get_ns({broadcast, _, _, _, _, _, _, _, _, _, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({broadcastid, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({broadcastname, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({buser, _}) -> <<"jabber:iq:mod_broadcast">>;
do_get_ns({participant, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({participants, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({query, _, _, _, _, _}) ->
    <<"jabber:iq:mod_broadcast">>;
do_get_ns({users, _}) -> <<"jabber:iq:mod_broadcast">>.

get_els({query,
         _type,
         _broadcast,
         _result_type,
         _status,
         _sub_els}) ->
    _sub_els.

set_els({query,
         _type,
         _broadcast,
         _result_type,
         _status,
         _},
        _sub_els) ->
    {query,
     _type,
     _broadcast,
     _result_type,
     _status,
     _sub_els}.

pp(query, 5) ->
    [type, broadcast, result_type, status, sub_els];
pp(broadcast, 10) ->
    [name,
     users,
     status,
     content,
     team_id,
     message_id,
     message_type,
     participants,
     broadcastname,
     broadcastid];
pp(users, 1) -> [user];
pp(buser, 1) -> [result_type];
pp(broadcastname, 1) -> [result_type];
pp(broadcastid, 1) -> [result_type];
pp(participants, 1) -> [participant];
pp(participant, 1) -> [result_type];
pp(_, _) -> no.

records() ->
    [{query, 5},
     {broadcast, 10},
     {users, 1},
     {buser, 1},
     {broadcastname, 1},
     {broadcastid, 1},
     {participants, 1},
     {participant, 1}].

decode_broadcast_participant(__TopXMLNS, __Opts,
                             {xmlel, <<"participant">>, _attrs, _els}) ->
    Result_type =
        decode_broadcast_participant_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         <<>>),
    {participant, Result_type}.

decode_broadcast_participant_els(__TopXMLNS, __Opts, [],
                                 Result_type) ->
    decode_broadcast_participant_cdata(__TopXMLNS,
                                       Result_type);
decode_broadcast_participant_els(__TopXMLNS, __Opts,
                                 [{xmlcdata, _data} | _els], Result_type) ->
    decode_broadcast_participant_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     <<Result_type/binary, _data/binary>>);
decode_broadcast_participant_els(__TopXMLNS, __Opts,
                                 [_ | _els], Result_type) ->
    decode_broadcast_participant_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Result_type).

encode_broadcast_participant({participant, Result_type},
                             __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_broadcast_participant_cdata(Result_type,
                                              []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"participant">>, _attrs, _els}.

decode_broadcast_participant_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_broadcast_participant_cdata(__TopXMLNS, _val) ->
    _val.

encode_broadcast_participant_cdata(<<>>, _acc) -> _acc;
encode_broadcast_participant_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_broadcast_participants(__TopXMLNS, __Opts,
                              {xmlel, <<"participants">>, _attrs, _els}) ->
    Participant =
        decode_broadcast_participants_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          []),
    {participants, Participant}.

decode_broadcast_participants_els(__TopXMLNS, __Opts,
                                  [], Participant) ->
    lists:reverse(Participant);
decode_broadcast_participants_els(__TopXMLNS, __Opts,
                                  [{xmlel, <<"participant">>, _attrs, _} = _el
                                   | _els],
                                  Participant) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_participants_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              [decode_broadcast_participant(<<"jabber:iq:mod_broadcast">>,
                                                                            __Opts,
                                                                            _el)
                                               | Participant]);
        _ ->
            decode_broadcast_participants_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              Participant)
    end;
decode_broadcast_participants_els(__TopXMLNS, __Opts,
                                  [_ | _els], Participant) ->
    decode_broadcast_participants_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      Participant).

encode_broadcast_participants({participants,
                               Participant},
                              __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_broadcast_participants_$participant'(Participant,
                                                                   __NewTopXMLNS,
                                                                   [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"participants">>, _attrs, _els}.

'encode_broadcast_participants_$participant'([],
                                             __TopXMLNS, _acc) ->
    _acc;
'encode_broadcast_participants_$participant'([Participant
                                              | _els],
                                             __TopXMLNS, _acc) ->
    'encode_broadcast_participants_$participant'(_els,
                                                 __TopXMLNS,
                                                 [encode_broadcast_participant(Participant,
                                                                               __TopXMLNS)
                                                  | _acc]).

decode_broadcast_id(__TopXMLNS, __Opts,
                    {xmlel, <<"broadcastid">>, _attrs, _els}) ->
    Result_type = decode_broadcast_id_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          <<>>),
    {broadcastid, Result_type}.

decode_broadcast_id_els(__TopXMLNS, __Opts, [],
                        Result_type) ->
    decode_broadcast_id_cdata(__TopXMLNS, Result_type);
decode_broadcast_id_els(__TopXMLNS, __Opts,
                        [{xmlcdata, _data} | _els], Result_type) ->
    decode_broadcast_id_els(__TopXMLNS,
                            __Opts,
                            _els,
                            <<Result_type/binary, _data/binary>>);
decode_broadcast_id_els(__TopXMLNS, __Opts, [_ | _els],
                        Result_type) ->
    decode_broadcast_id_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Result_type).

encode_broadcast_id({broadcastid, Result_type},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_broadcast_id_cdata(Result_type, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"broadcastid">>, _attrs, _els}.

decode_broadcast_id_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_broadcast_id_cdata(__TopXMLNS, _val) -> _val.

encode_broadcast_id_cdata(<<>>, _acc) -> _acc;
encode_broadcast_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_broadcast_name(__TopXMLNS, __Opts,
                      {xmlel, <<"broadcastname">>, _attrs, _els}) ->
    Result_type = decode_broadcast_name_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            <<>>),
    {broadcastname, Result_type}.

decode_broadcast_name_els(__TopXMLNS, __Opts, [],
                          Result_type) ->
    decode_broadcast_name_cdata(__TopXMLNS, Result_type);
decode_broadcast_name_els(__TopXMLNS, __Opts,
                          [{xmlcdata, _data} | _els], Result_type) ->
    decode_broadcast_name_els(__TopXMLNS,
                              __Opts,
                              _els,
                              <<Result_type/binary, _data/binary>>);
decode_broadcast_name_els(__TopXMLNS, __Opts,
                          [_ | _els], Result_type) ->
    decode_broadcast_name_els(__TopXMLNS,
                              __Opts,
                              _els,
                              Result_type).

encode_broadcast_name({broadcastname, Result_type},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_broadcast_name_cdata(Result_type, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"broadcastname">>, _attrs, _els}.

decode_broadcast_name_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_broadcast_name_cdata(__TopXMLNS, _val) -> _val.

encode_broadcast_name_cdata(<<>>, _acc) -> _acc;
encode_broadcast_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_broadcast_user(__TopXMLNS, __Opts,
                      {xmlel, <<"broadcast_user">>, _attrs, _els}) ->
    Result_type = decode_broadcast_user_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            <<>>),
    {buser, Result_type}.

decode_broadcast_user_els(__TopXMLNS, __Opts, [],
                          Result_type) ->
    decode_broadcast_user_cdata(__TopXMLNS, Result_type);
decode_broadcast_user_els(__TopXMLNS, __Opts,
                          [{xmlcdata, _data} | _els], Result_type) ->
    decode_broadcast_user_els(__TopXMLNS,
                              __Opts,
                              _els,
                              <<Result_type/binary, _data/binary>>);
decode_broadcast_user_els(__TopXMLNS, __Opts,
                          [_ | _els], Result_type) ->
    decode_broadcast_user_els(__TopXMLNS,
                              __Opts,
                              _els,
                              Result_type).

encode_broadcast_user({buser, Result_type},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_broadcast_user_cdata(Result_type, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"broadcast_user">>, _attrs, _els}.

decode_broadcast_user_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_broadcast_user_cdata(__TopXMLNS, _val) -> _val.

encode_broadcast_user_cdata(<<>>, _acc) -> _acc;
encode_broadcast_user_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_broadcast_users(__TopXMLNS, __Opts,
                       {xmlel, <<"users">>, _attrs, _els}) ->
    User = decode_broadcast_users_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      []),
    {users, User}.

decode_broadcast_users_els(__TopXMLNS, __Opts, [],
                           User) ->
    lists:reverse(User);
decode_broadcast_users_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"broadcast_user">>, _attrs, _} = _el
                            | _els],
                           User) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_users_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       [decode_broadcast_user(<<"jabber:iq:mod_broadcast">>,
                                                              __Opts,
                                                              _el)
                                        | User]);
        _ ->
            decode_broadcast_users_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       User)
    end;
decode_broadcast_users_els(__TopXMLNS, __Opts,
                           [_ | _els], User) ->
    decode_broadcast_users_els(__TopXMLNS,
                               __Opts,
                               _els,
                               User).

encode_broadcast_users({users, User}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_broadcast_users_$user'(User,
                                                     __NewTopXMLNS,
                                                     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"users">>, _attrs, _els}.

'encode_broadcast_users_$user'([], __TopXMLNS, _acc) ->
    _acc;
'encode_broadcast_users_$user'([User | _els],
                               __TopXMLNS, _acc) ->
    'encode_broadcast_users_$user'(_els,
                                   __TopXMLNS,
                                   [encode_broadcast_user(User, __TopXMLNS)
                                    | _acc]).

decode_broadcast_tag(__TopXMLNS, __Opts,
                     {xmlel, <<"broadcast">>, _attrs, _els}) ->
    {Participants, Users, Broadcastid, Broadcastname} =
        decode_broadcast_tag_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 [],
                                 [],
                                 [],
                                 []),
    {Name,
     Content,
     Team_id,
     Message_id,
     Message_type,
     Status} =
        decode_broadcast_tag_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined,
                                   undefined,
                                   undefined,
                                   undefined,
                                   undefined,
                                   undefined),
    {broadcast,
     Name,
     Users,
     Status,
     Content,
     Team_id,
     Message_id,
     Message_type,
     Participants,
     Broadcastname,
     Broadcastid}.

decode_broadcast_tag_els(__TopXMLNS, __Opts, [],
                         Participants, Users, Broadcastid, Broadcastname) ->
    {lists:reverse(Participants),
     lists:reverse(Users),
     lists:reverse(Broadcastid),
     lists:reverse(Broadcastname)};
decode_broadcast_tag_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"users">>, _attrs, _} = _el | _els],
                         Participants, Users, Broadcastid, Broadcastname) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     [decode_broadcast_users(<<"jabber:iq:mod_broadcast">>,
                                                             __Opts,
                                                             _el)
                                      | Users],
                                     Broadcastid,
                                     Broadcastname);
        _ ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     Broadcastid,
                                     Broadcastname)
    end;
decode_broadcast_tag_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"participants">>, _attrs, _} = _el | _els],
                         Participants, Users, Broadcastid, Broadcastname) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     [decode_broadcast_participants(<<"jabber:iq:mod_broadcast">>,
                                                                    __Opts,
                                                                    _el)
                                      | Participants],
                                     Users,
                                     Broadcastid,
                                     Broadcastname);
        _ ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     Broadcastid,
                                     Broadcastname)
    end;
decode_broadcast_tag_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"broadcastname">>, _attrs, _} = _el | _els],
                         Participants, Users, Broadcastid, Broadcastname) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     Broadcastid,
                                     [decode_broadcast_name(<<"jabber:iq:mod_broadcast">>,
                                                            __Opts,
                                                            _el)
                                      | Broadcastname]);
        _ ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     Broadcastid,
                                     Broadcastname)
    end;
decode_broadcast_tag_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"broadcastid">>, _attrs, _} = _el | _els],
                         Participants, Users, Broadcastid, Broadcastname) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     [decode_broadcast_id(<<"jabber:iq:mod_broadcast">>,
                                                          __Opts,
                                                          _el)
                                      | Broadcastid],
                                     Broadcastname);
        _ ->
            decode_broadcast_tag_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Participants,
                                     Users,
                                     Broadcastid,
                                     Broadcastname)
    end;
decode_broadcast_tag_els(__TopXMLNS, __Opts, [_ | _els],
                         Participants, Users, Broadcastid, Broadcastname) ->
    decode_broadcast_tag_els(__TopXMLNS,
                             __Opts,
                             _els,
                             Participants,
                             Users,
                             Broadcastid,
                             Broadcastname).

decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"name">>, _val} | _attrs], _Name, Content,
                           Team_id, Message_id, Message_type, Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               _val,
                               Content,
                               Team_id,
                               Message_id,
                               Message_type,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"content">>, _val} | _attrs], Name, _Content,
                           Team_id, Message_id, Message_type, Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               _val,
                               Team_id,
                               Message_id,
                               Message_type,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"team_id">>, _val} | _attrs], Name, Content,
                           _Team_id, Message_id, Message_type, Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               Content,
                               _val,
                               Message_id,
                               Message_type,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"message_id">>, _val} | _attrs], Name, Content,
                           Team_id, _Message_id, Message_type, Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               Content,
                               Team_id,
                               _val,
                               Message_type,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"message_type">>, _val} | _attrs], Name, Content,
                           Team_id, Message_id, _Message_type, Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               Content,
                               Team_id,
                               Message_id,
                               _val,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS,
                           [{<<"status">>, _val} | _attrs], Name, Content,
                           Team_id, Message_id, Message_type, _Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               Content,
                               Team_id,
                               Message_id,
                               Message_type,
                               _val);
decode_broadcast_tag_attrs(__TopXMLNS, [_ | _attrs],
                           Name, Content, Team_id, Message_id, Message_type,
                           Status) ->
    decode_broadcast_tag_attrs(__TopXMLNS,
                               _attrs,
                               Name,
                               Content,
                               Team_id,
                               Message_id,
                               Message_type,
                               Status);
decode_broadcast_tag_attrs(__TopXMLNS, [], Name,
                           Content, Team_id, Message_id, Message_type,
                           Status) ->
    {decode_broadcast_tag_attr_name(__TopXMLNS, Name),
     decode_broadcast_tag_attr_content(__TopXMLNS, Content),
     decode_broadcast_tag_attr_team_id(__TopXMLNS, Team_id),
     decode_broadcast_tag_attr_message_id(__TopXMLNS,
                                          Message_id),
     decode_broadcast_tag_attr_message_type(__TopXMLNS,
                                            Message_type),
     decode_broadcast_tag_attr_status(__TopXMLNS, Status)}.

encode_broadcast_tag({broadcast,
                      Name,
                      Users,
                      Status,
                      Content,
                      Team_id,
                      Message_id,
                      Message_type,
                      Participants,
                      Broadcastname,
                      Broadcastid},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_broadcast_tag_$participants'(Participants,
                                                           __NewTopXMLNS,
                                                           'encode_broadcast_tag_$users'(Users,
                                                                                         __NewTopXMLNS,
                                                                                         'encode_broadcast_tag_$broadcastid'(Broadcastid,
                                                                                                                             __NewTopXMLNS,
                                                                                                                             'encode_broadcast_tag_$broadcastname'(Broadcastname,
                                                                                                                                                                   __NewTopXMLNS,
                                                                                                                                                                   []))))),
    _attrs = encode_broadcast_tag_attr_status(Status,
                                              encode_broadcast_tag_attr_message_type(Message_type,
                                                                                     encode_broadcast_tag_attr_message_id(Message_id,
                                                                                                                          encode_broadcast_tag_attr_team_id(Team_id,
                                                                                                                                                            encode_broadcast_tag_attr_content(Content,
                                                                                                                                                                                              encode_broadcast_tag_attr_name(Name,
                                                                                                                                                                                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                        __TopXMLNS))))))),
    {xmlel, <<"broadcast">>, _attrs, _els}.

'encode_broadcast_tag_$participants'([], __TopXMLNS,
                                     _acc) ->
    _acc;
'encode_broadcast_tag_$participants'([Participants
                                      | _els],
                                     __TopXMLNS, _acc) ->
    'encode_broadcast_tag_$participants'(_els,
                                         __TopXMLNS,
                                         [encode_broadcast_participants(Participants,
                                                                        __TopXMLNS)
                                          | _acc]).

'encode_broadcast_tag_$users'([], __TopXMLNS, _acc) ->
    _acc;
'encode_broadcast_tag_$users'([Users | _els],
                              __TopXMLNS, _acc) ->
    'encode_broadcast_tag_$users'(_els,
                                  __TopXMLNS,
                                  [encode_broadcast_users(Users, __TopXMLNS)
                                   | _acc]).

'encode_broadcast_tag_$broadcastid'([], __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_broadcast_tag_$broadcastid'([Broadcastid
                                     | _els],
                                    __TopXMLNS, _acc) ->
    'encode_broadcast_tag_$broadcastid'(_els,
                                        __TopXMLNS,
                                        [encode_broadcast_id(Broadcastid,
                                                             __TopXMLNS)
                                         | _acc]).

'encode_broadcast_tag_$broadcastname'([], __TopXMLNS,
                                      _acc) ->
    _acc;
'encode_broadcast_tag_$broadcastname'([Broadcastname
                                       | _els],
                                      __TopXMLNS, _acc) ->
    'encode_broadcast_tag_$broadcastname'(_els,
                                          __TopXMLNS,
                                          [encode_broadcast_name(Broadcastname,
                                                                 __TopXMLNS)
                                           | _acc]).

decode_broadcast_tag_attr_name(__TopXMLNS, undefined) ->
    <<>>;
decode_broadcast_tag_attr_name(__TopXMLNS, _val) ->
    _val.

encode_broadcast_tag_attr_name(<<>>, _acc) -> _acc;
encode_broadcast_tag_attr_name(_val, _acc) ->
    [{<<"name">>, _val} | _acc].

decode_broadcast_tag_attr_content(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_broadcast_tag_attr_content(__TopXMLNS, _val) ->
    _val.

encode_broadcast_tag_attr_content(<<>>, _acc) -> _acc;
encode_broadcast_tag_attr_content(_val, _acc) ->
    [{<<"content">>, _val} | _acc].

decode_broadcast_tag_attr_team_id(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_broadcast_tag_attr_team_id(__TopXMLNS, _val) ->
    _val.

encode_broadcast_tag_attr_team_id(<<>>, _acc) -> _acc;
encode_broadcast_tag_attr_team_id(_val, _acc) ->
    [{<<"team_id">>, _val} | _acc].

decode_broadcast_tag_attr_message_id(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_broadcast_tag_attr_message_id(__TopXMLNS,
                                     _val) ->
    _val.

encode_broadcast_tag_attr_message_id(<<>>, _acc) ->
    _acc;
encode_broadcast_tag_attr_message_id(_val, _acc) ->
    [{<<"message_id">>, _val} | _acc].

decode_broadcast_tag_attr_message_type(__TopXMLNS,
                                       undefined) ->
    <<>>;
decode_broadcast_tag_attr_message_type(__TopXMLNS,
                                       _val) ->
    _val.

encode_broadcast_tag_attr_message_type(<<>>, _acc) ->
    _acc;
encode_broadcast_tag_attr_message_type(_val, _acc) ->
    [{<<"message_type">>, _val} | _acc].

decode_broadcast_tag_attr_status(__TopXMLNS,
                                 undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"status">>,
                   <<"broadcast">>,
                   __TopXMLNS}});
decode_broadcast_tag_attr_status(__TopXMLNS, _val) ->
    _val.

encode_broadcast_tag_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_query_broadcast(__TopXMLNS, __Opts,
                       {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, Broadcast, __Els} =
        decode_query_broadcast_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   <<>>,
                                   [],
                                   []),
    {Type, Status} =
        decode_query_broadcast_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined,
                                     undefined),
    {query, Type, Broadcast, Result_type, Status, __Els}.

decode_query_broadcast_els(__TopXMLNS, __Opts, [],
                           Result_type, Broadcast, __Els) ->
    {decode_query_broadcast_cdata(__TopXMLNS, Result_type),
     lists:reverse(Broadcast),
     lists:reverse(__Els)};
decode_query_broadcast_els(__TopXMLNS, __Opts,
                           [{xmlcdata, _data} | _els], Result_type, Broadcast,
                           __Els) ->
    decode_query_broadcast_els(__TopXMLNS,
                               __Opts,
                               _els,
                               <<Result_type/binary, _data/binary>>,
                               Broadcast,
                               __Els);
decode_query_broadcast_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"broadcast">>, _attrs, _} = _el | _els],
                           Result_type, Broadcast, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mod_broadcast">> ->
            decode_query_broadcast_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Result_type,
                                       [decode_broadcast_tag(<<"jabber:iq:mod_broadcast">>,
                                                             __Opts,
                                                             _el)
                                        | Broadcast],
                                       __Els);
        _ ->
            decode_query_broadcast_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Result_type,
                                       Broadcast,
                                       [_el | __Els])
    end;
decode_query_broadcast_els(__TopXMLNS, __Opts,
                           [{xmlel, _name, _attrs, _} = _el | _els],
                           Result_type, Broadcast, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_query_broadcast_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Result_type,
                                       Broadcast,
                                       [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_query_broadcast_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Result_type,
                                               Broadcast,
                                               [_el | __Els]);
                Mod ->
                    decode_query_broadcast_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Result_type,
                                               Broadcast,
                                               [Mod:do_decode(_name,
                                                              __XMLNS,
                                                              _el,
                                                              __Opts)
                                                | __Els])
            end
    end.

decode_query_broadcast_attrs(__TopXMLNS,
                             [{<<"type">>, _val} | _attrs], _Type, Status) ->
    decode_query_broadcast_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 Status);
decode_query_broadcast_attrs(__TopXMLNS,
                             [{<<"status">>, _val} | _attrs], Type, _Status) ->
    decode_query_broadcast_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 _val);
decode_query_broadcast_attrs(__TopXMLNS, [_ | _attrs],
                             Type, Status) ->
    decode_query_broadcast_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Status);
decode_query_broadcast_attrs(__TopXMLNS, [], Type,
                             Status) ->
    {decode_query_broadcast_attr_type(__TopXMLNS, Type),
     decode_query_broadcast_attr_status(__TopXMLNS, Status)}.

encode_query_broadcast({query,
                        Type,
                        Broadcast,
                        Result_type,
                        Status,
                        __Els},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mod_broadcast">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse(encode_query_broadcast_cdata(Result_type,
                                                          'encode_query_broadcast_$broadcast'(Broadcast,
                                                                                              __NewTopXMLNS,
                                                                                              []))),
    _attrs = encode_query_broadcast_attr_status(Status,
                                                encode_query_broadcast_attr_type(Type,
                                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                            __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_query_broadcast_$broadcast'([], __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_query_broadcast_$broadcast'([Broadcast | _els],
                                    __TopXMLNS, _acc) ->
    'encode_query_broadcast_$broadcast'(_els,
                                        __TopXMLNS,
                                        [encode_broadcast_tag(Broadcast,
                                                              __TopXMLNS)
                                         | _acc]).

decode_query_broadcast_attr_type(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_query_broadcast_attr_type(__TopXMLNS, _val) ->
    _val.

encode_query_broadcast_attr_type(<<>>, _acc) -> _acc;
encode_query_broadcast_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_query_broadcast_attr_status(__TopXMLNS,
                                   undefined) ->
    <<>>;
decode_query_broadcast_attr_status(__TopXMLNS, _val) ->
    _val.

encode_query_broadcast_attr_status(<<>>, _acc) -> _acc;
encode_query_broadcast_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_query_broadcast_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_query_broadcast_cdata(__TopXMLNS, _val) -> _val.

encode_query_broadcast_cdata(<<>>, _acc) -> _acc;
encode_query_broadcast_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
