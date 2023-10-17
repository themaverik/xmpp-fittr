%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(mix_group_chat).

-compile(export_all).

do_decode(<<"participant">>,
          <<"jabber:iq:mixgroupchat">>, El, Opts) ->
    decode_group_chat_participant(<<"jabber:iq:mixgroupchat">>,
                                  Opts,
                                  El);
do_decode(<<"participants">>,
          <<"jabber:iq:mixgroupchat">>, El, Opts) ->
    decode_group_chat_participants(<<"jabber:iq:mixgroupchat">>,
                                   Opts,
                                   El);
do_decode(<<"subscribe">>, <<"jabber:iq:mixgroupchat">>,
          El, Opts) ->
    decode_group_chat_subscription(<<"jabber:iq:mixgroupchat">>,
                                   Opts,
                                   El);
do_decode(<<"subscriptions">>,
          <<"jabber:iq:mixgroupchat">>, El, Opts) ->
    decode_group_chat_subscriptions(<<"jabber:iq:mixgroupchat">>,
                                    Opts,
                                    El);
do_decode(<<"query">>, <<"jabber:iq:mixgroupchat">>, El,
          Opts) ->
    decode_group_chat_query(<<"jabber:iq:mixgroupchat">>,
                            Opts,
                            El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"participant">>, <<"jabber:iq:mixgroupchat">>},
     {<<"participants">>, <<"jabber:iq:mixgroupchat">>},
     {<<"subscribe">>, <<"jabber:iq:mixgroupchat">>},
     {<<"subscriptions">>, <<"jabber:iq:mixgroupchat">>},
     {<<"query">>, <<"jabber:iq:mixgroupchat">>}].

do_encode({group_query,
           _,
           _,
           _,
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
    encode_group_chat_query(Query, TopXMLNS);
do_encode({group_subscriptions, _} = Subscriptions,
          TopXMLNS) ->
    encode_group_chat_subscriptions(Subscriptions,
                                    TopXMLNS);
do_encode({group_subscription, _, _} = Subscribe,
          TopXMLNS) ->
    encode_group_chat_subscription(Subscribe, TopXMLNS);
do_encode({group_participants, _} = Participants,
          TopXMLNS) ->
    encode_group_chat_participants(Participants, TopXMLNS);
do_encode({group_participant, _} = Participant,
          TopXMLNS) ->
    encode_group_chat_participant(Participant, TopXMLNS).

do_get_name({group_participant, _}) ->
    <<"participant">>;
do_get_name({group_participants, _}) ->
    <<"participants">>;
do_get_name({group_query,
             _,
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
    <<"query">>;
do_get_name({group_subscription, _, _}) ->
    <<"subscribe">>;
do_get_name({group_subscriptions, _}) ->
    <<"subscriptions">>.

do_get_ns({group_participant, _}) ->
    <<"jabber:iq:mixgroupchat">>;
do_get_ns({group_participants, _}) ->
    <<"jabber:iq:mixgroupchat">>;
do_get_ns({group_query,
           _,
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
    <<"jabber:iq:mixgroupchat">>;
do_get_ns({group_subscription, _, _}) ->
    <<"jabber:iq:mixgroupchat">>;
do_get_ns({group_subscriptions, _}) ->
    <<"jabber:iq:mixgroupchat">>.

get_els({group_query,
         _status,
         _type,
         _chat_type,
         _msgid,
         _group_id,
         _pin_status,
         _ptt_status,
         _subscriptions,
         _participants,
         _result_type,
         _sub_els}) ->
    _sub_els.

set_els({group_query,
         _status,
         _type,
         _chat_type,
         _msgid,
         _group_id,
         _pin_status,
         _ptt_status,
         _subscriptions,
         _participants,
         _result_type,
         _},
        _sub_els) ->
    {group_query,
     _status,
     _type,
     _chat_type,
     _msgid,
     _group_id,
     _pin_status,
     _ptt_status,
     _subscriptions,
     _participants,
     _result_type,
     _sub_els}.

pp(group_query, 11) ->
    [status,
     type,
     chat_type,
     msgid,
     group_id,
     pin_status,
     ptt_status,
     subscriptions,
     participants,
     result_type,
     sub_els];
pp(group_subscriptions, 1) -> [subscription];
pp(group_subscription, 2) -> [result_type, node];
pp(group_participants, 1) -> [participant];
pp(group_participant, 1) -> [result_type];
pp(_, _) -> no.

records() ->
    [{group_query, 11},
     {group_subscriptions, 1},
     {group_subscription, 2},
     {group_participants, 1},
     {group_participant, 1}].

decode_group_chat_participant(__TopXMLNS, __Opts,
                              {xmlel, <<"participant">>, _attrs, _els}) ->
    Result_type =
        decode_group_chat_participant_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          <<>>),
    {group_participant, Result_type}.

decode_group_chat_participant_els(__TopXMLNS, __Opts,
                                  [], Result_type) ->
    decode_group_chat_participant_cdata(__TopXMLNS,
                                        Result_type);
decode_group_chat_participant_els(__TopXMLNS, __Opts,
                                  [{xmlcdata, _data} | _els], Result_type) ->
    decode_group_chat_participant_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      <<Result_type/binary, _data/binary>>);
decode_group_chat_participant_els(__TopXMLNS, __Opts,
                                  [_ | _els], Result_type) ->
    decode_group_chat_participant_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      Result_type).

encode_group_chat_participant({group_participant,
                               Result_type},
                              __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mixgroupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_group_chat_participant_cdata(Result_type,
                                               []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"participant">>, _attrs, _els}.

decode_group_chat_participant_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_group_chat_participant_cdata(__TopXMLNS, _val) ->
    _val.

encode_group_chat_participant_cdata(<<>>, _acc) -> _acc;
encode_group_chat_participant_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_group_chat_participants(__TopXMLNS, __Opts,
                               {xmlel, <<"participants">>, _attrs, _els}) ->
    Participant =
        decode_group_chat_participants_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           []),
    {group_participants, Participant}.

decode_group_chat_participants_els(__TopXMLNS, __Opts,
                                   [], Participant) ->
    lists:reverse(Participant);
decode_group_chat_participants_els(__TopXMLNS, __Opts,
                                   [{xmlel, <<"participant">>, _attrs, _} = _el
                                    | _els],
                                   Participant) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mixgroupchat">> ->
            decode_group_chat_participants_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               [decode_group_chat_participant(<<"jabber:iq:mixgroupchat">>,
                                                                              __Opts,
                                                                              _el)
                                                | Participant]);
        _ ->
            decode_group_chat_participants_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Participant)
    end;
decode_group_chat_participants_els(__TopXMLNS, __Opts,
                                   [_ | _els], Participant) ->
    decode_group_chat_participants_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Participant).

encode_group_chat_participants({group_participants,
                                Participant},
                               __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mixgroupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_group_chat_participants_$participant'(Participant,
                                                                    __NewTopXMLNS,
                                                                    [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"participants">>, _attrs, _els}.

'encode_group_chat_participants_$participant'([],
                                              __TopXMLNS, _acc) ->
    _acc;
'encode_group_chat_participants_$participant'([Participant
                                               | _els],
                                              __TopXMLNS, _acc) ->
    'encode_group_chat_participants_$participant'(_els,
                                                  __TopXMLNS,
                                                  [encode_group_chat_participant(Participant,
                                                                                 __TopXMLNS)
                                                   | _acc]).

decode_group_chat_subscription(__TopXMLNS, __Opts,
                               {xmlel, <<"subscribe">>, _attrs, _els}) ->
    Result_type =
        decode_group_chat_subscription_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           <<>>),
    Node = decode_group_chat_subscription_attrs(__TopXMLNS,
                                                _attrs,
                                                undefined),
    {group_subscription, Result_type, Node}.

decode_group_chat_subscription_els(__TopXMLNS, __Opts,
                                   [], Result_type) ->
    decode_group_chat_subscription_cdata(__TopXMLNS,
                                         Result_type);
decode_group_chat_subscription_els(__TopXMLNS, __Opts,
                                   [{xmlcdata, _data} | _els], Result_type) ->
    decode_group_chat_subscription_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       <<Result_type/binary, _data/binary>>);
decode_group_chat_subscription_els(__TopXMLNS, __Opts,
                                   [_ | _els], Result_type) ->
    decode_group_chat_subscription_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Result_type).

decode_group_chat_subscription_attrs(__TopXMLNS,
                                     [{<<"node">>, _val} | _attrs], _Node) ->
    decode_group_chat_subscription_attrs(__TopXMLNS,
                                         _attrs,
                                         _val);
decode_group_chat_subscription_attrs(__TopXMLNS,
                                     [_ | _attrs], Node) ->
    decode_group_chat_subscription_attrs(__TopXMLNS,
                                         _attrs,
                                         Node);
decode_group_chat_subscription_attrs(__TopXMLNS, [],
                                     Node) ->
    decode_group_chat_subscription_attr_node(__TopXMLNS,
                                             Node).

encode_group_chat_subscription({group_subscription,
                                Result_type,
                                Node},
                               __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mixgroupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_group_chat_subscription_cdata(Result_type,
                                                []),
    _attrs = encode_group_chat_subscription_attr_node(Node,
                                                      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                 __TopXMLNS)),
    {xmlel, <<"subscribe">>, _attrs, _els}.

decode_group_chat_subscription_attr_node(__TopXMLNS,
                                         undefined) ->
    <<>>;
decode_group_chat_subscription_attr_node(__TopXMLNS,
                                         _val) ->
    _val.

encode_group_chat_subscription_attr_node(<<>>, _acc) ->
    _acc;
encode_group_chat_subscription_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_group_chat_subscription_cdata(__TopXMLNS,
                                     <<>>) ->
    <<>>;
decode_group_chat_subscription_cdata(__TopXMLNS,
                                     _val) ->
    _val.

encode_group_chat_subscription_cdata(<<>>, _acc) ->
    _acc;
encode_group_chat_subscription_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_group_chat_subscriptions(__TopXMLNS, __Opts,
                                {xmlel, <<"subscriptions">>, _attrs, _els}) ->
    Subscription =
        decode_group_chat_subscriptions_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            []),
    {group_subscriptions, Subscription}.

decode_group_chat_subscriptions_els(__TopXMLNS, __Opts,
                                    [], Subscription) ->
    lists:reverse(Subscription);
decode_group_chat_subscriptions_els(__TopXMLNS, __Opts,
                                    [{xmlel, <<"subscribe">>, _attrs, _} = _el
                                     | _els],
                                    Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mixgroupchat">> ->
            decode_group_chat_subscriptions_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                [decode_group_chat_subscription(<<"jabber:iq:mixgroupchat">>,
                                                                                __Opts,
                                                                                _el)
                                                 | Subscription]);
        _ ->
            decode_group_chat_subscriptions_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                Subscription)
    end;
decode_group_chat_subscriptions_els(__TopXMLNS, __Opts,
                                    [_ | _els], Subscription) ->
    decode_group_chat_subscriptions_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Subscription).

encode_group_chat_subscriptions({group_subscriptions,
                                 Subscription},
                                __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mixgroupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_group_chat_subscriptions_$subscription'(Subscription,
                                                                      __NewTopXMLNS,
                                                                      [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"subscriptions">>, _attrs, _els}.

'encode_group_chat_subscriptions_$subscription'([],
                                                __TopXMLNS, _acc) ->
    _acc;
'encode_group_chat_subscriptions_$subscription'([Subscription
                                                 | _els],
                                                __TopXMLNS, _acc) ->
    'encode_group_chat_subscriptions_$subscription'(_els,
                                                    __TopXMLNS,
                                                    [encode_group_chat_subscription(Subscription,
                                                                                    __TopXMLNS)
                                                     | _acc]).

decode_group_chat_query(__TopXMLNS, __Opts,
                        {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, Participants, Subscriptions, __Els} =
        decode_group_chat_query_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<>>,
                                    [],
                                    [],
                                    []),
    {Status,
     Type,
     Group_id,
     Chat_type,
     Pin_status,
     Ptt_status,
     Msgid} =
        decode_group_chat_query_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined),
    {group_query,
     Status,
     Type,
     Chat_type,
     Msgid,
     Group_id,
     Pin_status,
     Ptt_status,
     Subscriptions,
     Participants,
     Result_type,
     __Els}.

decode_group_chat_query_els(__TopXMLNS, __Opts, [],
                            Result_type, Participants, Subscriptions, __Els) ->
    {decode_group_chat_query_cdata(__TopXMLNS, Result_type),
     lists:reverse(Participants),
     lists:reverse(Subscriptions),
     lists:reverse(__Els)};
decode_group_chat_query_els(__TopXMLNS, __Opts,
                            [{xmlcdata, _data} | _els], Result_type,
                            Participants, Subscriptions, __Els) ->
    decode_group_chat_query_els(__TopXMLNS,
                                __Opts,
                                _els,
                                <<Result_type/binary, _data/binary>>,
                                Participants,
                                Subscriptions,
                                __Els);
decode_group_chat_query_els(__TopXMLNS, __Opts,
                            [{xmlel, <<"subscriptions">>, _attrs, _} = _el
                             | _els],
                            Result_type, Participants, Subscriptions, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mixgroupchat">> ->
            decode_group_chat_query_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        Participants,
                                        [decode_group_chat_subscriptions(<<"jabber:iq:mixgroupchat">>,
                                                                         __Opts,
                                                                         _el)
                                         | Subscriptions],
                                        __Els);
        _ ->
            decode_group_chat_query_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        Participants,
                                        Subscriptions,
                                        [_el | __Els])
    end;
decode_group_chat_query_els(__TopXMLNS, __Opts,
                            [{xmlel, <<"participants">>, _attrs, _} = _el
                             | _els],
                            Result_type, Participants, Subscriptions, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:mixgroupchat">> ->
            decode_group_chat_query_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        [decode_group_chat_participants(<<"jabber:iq:mixgroupchat">>,
                                                                        __Opts,
                                                                        _el)
                                         | Participants],
                                        Subscriptions,
                                        __Els);
        _ ->
            decode_group_chat_query_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        Participants,
                                        Subscriptions,
                                        [_el | __Els])
    end;
decode_group_chat_query_els(__TopXMLNS, __Opts,
                            [{xmlel, _name, _attrs, _} = _el | _els],
                            Result_type, Participants, Subscriptions, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_group_chat_query_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Result_type,
                                        Participants,
                                        Subscriptions,
                                        [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_group_chat_query_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                Result_type,
                                                Participants,
                                                Subscriptions,
                                                [_el | __Els]);
                Mod ->
                    decode_group_chat_query_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                Result_type,
                                                Participants,
                                                Subscriptions,
                                                [Mod:do_decode(_name,
                                                               __XMLNS,
                                                               _el,
                                                               __Opts)
                                                 | __Els])
            end
    end.

decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"status">>, _val} | _attrs], _Status, Type,
                              Group_id, Chat_type, Pin_status, Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  _val,
                                  Type,
                                  Group_id,
                                  Chat_type,
                                  Pin_status,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"type">>, _val} | _attrs], Status, _Type,
                              Group_id, Chat_type, Pin_status, Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  _val,
                                  Group_id,
                                  Chat_type,
                                  Pin_status,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"group_id">>, _val} | _attrs], Status, Type,
                              _Group_id, Chat_type, Pin_status, Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  _val,
                                  Chat_type,
                                  Pin_status,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"chat_type">>, _val} | _attrs], Status, Type,
                              Group_id, _Chat_type, Pin_status, Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  Group_id,
                                  _val,
                                  Pin_status,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"pin_status">>, _val} | _attrs], Status, Type,
                              Group_id, Chat_type, _Pin_status, Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  Group_id,
                                  Chat_type,
                                  _val,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"ptt_status">>, _val} | _attrs], Status, Type,
                              Group_id, Chat_type, Pin_status, _Ptt_status,
                              Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  Group_id,
                                  Chat_type,
                                  Pin_status,
                                  _val,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS,
                              [{<<"msgid">>, _val} | _attrs], Status, Type,
                              Group_id, Chat_type, Pin_status, Ptt_status,
                              _Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  Group_id,
                                  Chat_type,
                                  Pin_status,
                                  Ptt_status,
                                  _val);
decode_group_chat_query_attrs(__TopXMLNS, [_ | _attrs],
                              Status, Type, Group_id, Chat_type, Pin_status,
                              Ptt_status, Msgid) ->
    decode_group_chat_query_attrs(__TopXMLNS,
                                  _attrs,
                                  Status,
                                  Type,
                                  Group_id,
                                  Chat_type,
                                  Pin_status,
                                  Ptt_status,
                                  Msgid);
decode_group_chat_query_attrs(__TopXMLNS, [], Status,
                              Type, Group_id, Chat_type, Pin_status, Ptt_status,
                              Msgid) ->
    {decode_group_chat_query_attr_status(__TopXMLNS,
                                         Status),
     decode_group_chat_query_attr_type(__TopXMLNS, Type),
     decode_group_chat_query_attr_group_id(__TopXMLNS,
                                           Group_id),
     decode_group_chat_query_attr_chat_type(__TopXMLNS,
                                            Chat_type),
     decode_group_chat_query_attr_pin_status(__TopXMLNS,
                                             Pin_status),
     decode_group_chat_query_attr_ptt_status(__TopXMLNS,
                                             Ptt_status),
     decode_group_chat_query_attr_msgid(__TopXMLNS, Msgid)}.

encode_group_chat_query({group_query,
                         Status,
                         Type,
                         Chat_type,
                         Msgid,
                         Group_id,
                         Pin_status,
                         Ptt_status,
                         Subscriptions,
                         Participants,
                         Result_type,
                         __Els},
                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:mixgroupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse(encode_group_chat_query_cdata(Result_type,
                                                           'encode_group_chat_query_$participants'(Participants,
                                                                                                   __NewTopXMLNS,
                                                                                                   'encode_group_chat_query_$subscriptions'(Subscriptions,
                                                                                                                                            __NewTopXMLNS,
                                                                                                                                            [])))),
    _attrs = encode_group_chat_query_attr_msgid(Msgid,
                                                encode_group_chat_query_attr_ptt_status(Ptt_status,
                                                                                        encode_group_chat_query_attr_pin_status(Pin_status,
                                                                                                                                encode_group_chat_query_attr_chat_type(Chat_type,
                                                                                                                                                                       encode_group_chat_query_attr_group_id(Group_id,
                                                                                                                                                                                                             encode_group_chat_query_attr_type(Type,
                                                                                                                                                                                                                                               encode_group_chat_query_attr_status(Status,
                                                                                                                                                                                                                                                                                   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                                                              __TopXMLNS)))))))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_group_chat_query_$participants'([], __TopXMLNS,
                                        _acc) ->
    _acc;
'encode_group_chat_query_$participants'([Participants
                                         | _els],
                                        __TopXMLNS, _acc) ->
    'encode_group_chat_query_$participants'(_els,
                                            __TopXMLNS,
                                            [encode_group_chat_participants(Participants,
                                                                            __TopXMLNS)
                                             | _acc]).

'encode_group_chat_query_$subscriptions'([], __TopXMLNS,
                                         _acc) ->
    _acc;
'encode_group_chat_query_$subscriptions'([Subscriptions
                                          | _els],
                                         __TopXMLNS, _acc) ->
    'encode_group_chat_query_$subscriptions'(_els,
                                             __TopXMLNS,
                                             [encode_group_chat_subscriptions(Subscriptions,
                                                                              __TopXMLNS)
                                              | _acc]).

decode_group_chat_query_attr_status(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_group_chat_query_attr_status(__TopXMLNS, _val) ->
    _val.

encode_group_chat_query_attr_status(<<>>, _acc) -> _acc;
encode_group_chat_query_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_group_chat_query_attr_type(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_group_chat_query_attr_type(__TopXMLNS, _val) ->
    _val.

encode_group_chat_query_attr_type(<<>>, _acc) -> _acc;
encode_group_chat_query_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_group_chat_query_attr_group_id(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_group_chat_query_attr_group_id(__TopXMLNS,
                                      _val) ->
    _val.

encode_group_chat_query_attr_group_id(<<>>, _acc) ->
    _acc;
encode_group_chat_query_attr_group_id(_val, _acc) ->
    [{<<"group_id">>, _val} | _acc].

decode_group_chat_query_attr_chat_type(__TopXMLNS,
                                       undefined) ->
    <<>>;
decode_group_chat_query_attr_chat_type(__TopXMLNS,
                                       _val) ->
    _val.

encode_group_chat_query_attr_chat_type(<<>>, _acc) ->
    _acc;
encode_group_chat_query_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_group_chat_query_attr_pin_status(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_group_chat_query_attr_pin_status(__TopXMLNS,
                                        _val) ->
    _val.

encode_group_chat_query_attr_pin_status(<<>>, _acc) ->
    _acc;
encode_group_chat_query_attr_pin_status(_val, _acc) ->
    [{<<"pin_status">>, _val} | _acc].

decode_group_chat_query_attr_ptt_status(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_group_chat_query_attr_ptt_status(__TopXMLNS,
                                        _val) ->
    _val.

encode_group_chat_query_attr_ptt_status(<<>>, _acc) ->
    _acc;
encode_group_chat_query_attr_ptt_status(_val, _acc) ->
    [{<<"ptt_status">>, _val} | _acc].

decode_group_chat_query_attr_msgid(__TopXMLNS,
                                   undefined) ->
    <<>>;
decode_group_chat_query_attr_msgid(__TopXMLNS, _val) ->
    _val.

encode_group_chat_query_attr_msgid(<<>>, _acc) -> _acc;
encode_group_chat_query_attr_msgid(_val, _acc) ->
    [{<<"msgid">>, _val} | _acc].

decode_group_chat_query_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_group_chat_query_cdata(__TopXMLNS, _val) -> _val.

encode_group_chat_query_cdata(<<>>, _acc) -> _acc;
encode_group_chat_query_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
