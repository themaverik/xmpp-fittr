%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(call).

-compile(export_all).

do_decode(<<"call">>, <<"urn:xmpp:call">>, El, Opts) ->
    decode_call(<<"urn:xmpp:call">>, Opts, El);
do_decode(<<"mediacall">>, <<"urn:xmpp:call">>, El,
          Opts) ->
    decode_mediacall(<<"urn:xmpp:call">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"call">>, <<"urn:xmpp:call">>},
     {<<"mediacall">>, <<"urn:xmpp:call">>}].

do_encode({mediacall, _, _, _, _, _, _} = Mediacall,
          TopXMLNS) ->
    encode_mediacall(Mediacall, TopXMLNS);
do_encode({call, _, _, _, _, _, _} = Call, TopXMLNS) ->
    encode_call(Call, TopXMLNS).

do_get_name({call, _, _, _, _, _, _}) -> <<"call">>;
do_get_name({mediacall, _, _, _, _, _, _}) ->
    <<"mediacall">>.

do_get_ns({call, _, _, _, _, _, _}) ->
    <<"urn:xmpp:call">>;
do_get_ns({mediacall, _, _, _, _, _, _}) ->
    <<"urn:xmpp:call">>.

pp(mediacall, 6) ->
    [call_mode,
     call_time,
     call_from,
     call_type,
     room_id,
     group_id];
pp(call, 6) ->
    [socket_id,
     call_status,
     call_type,
     caller_device,
     call_attend_status,
     call_id];
pp(_, _) -> no.

records() -> [{mediacall, 6}, {call, 6}].

decode_call(__TopXMLNS, __Opts,
            {xmlel, <<"call">>, _attrs, _els}) ->
    {Socket_id,
     Call_status,
     Call_attend_status,
     Call_id,
     Call_type,
     Caller_device} =
        decode_call_attrs(__TopXMLNS,
                          _attrs,
                          undefined,
                          undefined,
                          undefined,
                          undefined,
                          undefined,
                          undefined),
    {call,
     Socket_id,
     Call_status,
     Call_type,
     Caller_device,
     Call_attend_status,
     Call_id}.

decode_call_attrs(__TopXMLNS,
                  [{<<"socket_id">>, _val} | _attrs], _Socket_id,
                  Call_status, Call_attend_status, Call_id, Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      _val,
                      Call_status,
                      Call_attend_status,
                      Call_id,
                      Call_type,
                      Caller_device);
decode_call_attrs(__TopXMLNS,
                  [{<<"call_status">>, _val} | _attrs], Socket_id,
                  _Call_status, Call_attend_status, Call_id, Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      _val,
                      Call_attend_status,
                      Call_id,
                      Call_type,
                      Caller_device);
decode_call_attrs(__TopXMLNS,
                  [{<<"call_attend_status">>, _val} | _attrs], Socket_id,
                  Call_status, _Call_attend_status, Call_id, Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      Call_status,
                      _val,
                      Call_id,
                      Call_type,
                      Caller_device);
decode_call_attrs(__TopXMLNS,
                  [{<<"call_id">>, _val} | _attrs], Socket_id,
                  Call_status, Call_attend_status, _Call_id, Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      Call_status,
                      Call_attend_status,
                      _val,
                      Call_type,
                      Caller_device);
decode_call_attrs(__TopXMLNS,
                  [{<<"call_type">>, _val} | _attrs], Socket_id,
                  Call_status, Call_attend_status, Call_id, _Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      Call_status,
                      Call_attend_status,
                      Call_id,
                      _val,
                      Caller_device);
decode_call_attrs(__TopXMLNS,
                  [{<<"caller_device">>, _val} | _attrs], Socket_id,
                  Call_status, Call_attend_status, Call_id, Call_type,
                  _Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      Call_status,
                      Call_attend_status,
                      Call_id,
                      Call_type,
                      _val);
decode_call_attrs(__TopXMLNS, [_ | _attrs], Socket_id,
                  Call_status, Call_attend_status, Call_id, Call_type,
                  Caller_device) ->
    decode_call_attrs(__TopXMLNS,
                      _attrs,
                      Socket_id,
                      Call_status,
                      Call_attend_status,
                      Call_id,
                      Call_type,
                      Caller_device);
decode_call_attrs(__TopXMLNS, [], Socket_id,
                  Call_status, Call_attend_status, Call_id, Call_type,
                  Caller_device) ->
    {decode_call_attr_socket_id(__TopXMLNS, Socket_id),
     decode_call_attr_call_status(__TopXMLNS, Call_status),
     decode_call_attr_call_attend_status(__TopXMLNS,
                                         Call_attend_status),
     decode_call_attr_call_id(__TopXMLNS, Call_id),
     decode_call_attr_call_type(__TopXMLNS, Call_type),
     decode_call_attr_caller_device(__TopXMLNS,
                                    Caller_device)}.

encode_call({call,
             Socket_id,
             Call_status,
             Call_type,
             Caller_device,
             Call_attend_status,
             Call_id},
            __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:call">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_call_attr_caller_device(Caller_device,
                                            encode_call_attr_call_type(Call_type,
                                                                       encode_call_attr_call_id(Call_id,
                                                                                                encode_call_attr_call_attend_status(Call_attend_status,
                                                                                                                                    encode_call_attr_call_status(Call_status,
                                                                                                                                                                 encode_call_attr_socket_id(Socket_id,
                                                                                                                                                                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                       __TopXMLNS))))))),
    {xmlel, <<"call">>, _attrs, _els}.

decode_call_attr_socket_id(__TopXMLNS, undefined) ->
    <<>>;
decode_call_attr_socket_id(__TopXMLNS, _val) -> _val.

encode_call_attr_socket_id(<<>>, _acc) -> _acc;
encode_call_attr_socket_id(_val, _acc) ->
    [{<<"socket_id">>, _val} | _acc].

decode_call_attr_call_status(__TopXMLNS, undefined) ->
    <<>>;
decode_call_attr_call_status(__TopXMLNS, _val) -> _val.

encode_call_attr_call_status(<<>>, _acc) -> _acc;
encode_call_attr_call_status(_val, _acc) ->
    [{<<"call_status">>, _val} | _acc].

decode_call_attr_call_attend_status(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_call_attr_call_attend_status(__TopXMLNS, _val) ->
    _val.

encode_call_attr_call_attend_status(<<>>, _acc) -> _acc;
encode_call_attr_call_attend_status(_val, _acc) ->
    [{<<"call_attend_status">>, _val} | _acc].

decode_call_attr_call_id(__TopXMLNS, undefined) -> <<>>;
decode_call_attr_call_id(__TopXMLNS, _val) -> _val.

encode_call_attr_call_id(<<>>, _acc) -> _acc;
encode_call_attr_call_id(_val, _acc) ->
    [{<<"call_id">>, _val} | _acc].

decode_call_attr_call_type(__TopXMLNS, undefined) ->
    <<>>;
decode_call_attr_call_type(__TopXMLNS, _val) -> _val.

encode_call_attr_call_type(<<>>, _acc) -> _acc;
encode_call_attr_call_type(_val, _acc) ->
    [{<<"call_type">>, _val} | _acc].

decode_call_attr_caller_device(__TopXMLNS, undefined) ->
    <<>>;
decode_call_attr_caller_device(__TopXMLNS, _val) ->
    _val.

encode_call_attr_caller_device(<<>>, _acc) -> _acc;
encode_call_attr_caller_device(_val, _acc) ->
    [{<<"caller_device">>, _val} | _acc].

decode_mediacall(__TopXMLNS, __Opts,
                 {xmlel, <<"mediacall">>, _attrs, _els}) ->
    {Room_id,
     Call_type,
     Call_time,
     Group_id,
     Call_from,
     Call_mode} =
        decode_mediacall_attrs(__TopXMLNS,
                               _attrs,
                               undefined,
                               undefined,
                               undefined,
                               undefined,
                               undefined,
                               undefined),
    {mediacall,
     Call_mode,
     Call_time,
     Call_from,
     Call_type,
     Room_id,
     Group_id}.

decode_mediacall_attrs(__TopXMLNS,
                       [{<<"room_id">>, _val} | _attrs], _Room_id, Call_type,
                       Call_time, Group_id, Call_from, Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           _val,
                           Call_type,
                           Call_time,
                           Group_id,
                           Call_from,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS,
                       [{<<"call_type">>, _val} | _attrs], Room_id, _Call_type,
                       Call_time, Group_id, Call_from, Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           _val,
                           Call_time,
                           Group_id,
                           Call_from,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS,
                       [{<<"call_time">>, _val} | _attrs], Room_id, Call_type,
                       _Call_time, Group_id, Call_from, Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           Call_type,
                           _val,
                           Group_id,
                           Call_from,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS,
                       [{<<"group_id">>, _val} | _attrs], Room_id, Call_type,
                       Call_time, _Group_id, Call_from, Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           Call_type,
                           Call_time,
                           _val,
                           Call_from,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS,
                       [{<<"call_from">>, _val} | _attrs], Room_id, Call_type,
                       Call_time, Group_id, _Call_from, Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           Call_type,
                           Call_time,
                           Group_id,
                           _val,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS,
                       [{<<"call_mode">>, _val} | _attrs], Room_id, Call_type,
                       Call_time, Group_id, Call_from, _Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           Call_type,
                           Call_time,
                           Group_id,
                           Call_from,
                           _val);
decode_mediacall_attrs(__TopXMLNS, [_ | _attrs],
                       Room_id, Call_type, Call_time, Group_id, Call_from,
                       Call_mode) ->
    decode_mediacall_attrs(__TopXMLNS,
                           _attrs,
                           Room_id,
                           Call_type,
                           Call_time,
                           Group_id,
                           Call_from,
                           Call_mode);
decode_mediacall_attrs(__TopXMLNS, [], Room_id,
                       Call_type, Call_time, Group_id, Call_from, Call_mode) ->
    {decode_mediacall_attr_room_id(__TopXMLNS, Room_id),
     decode_mediacall_attr_call_type(__TopXMLNS, Call_type),
     decode_mediacall_attr_call_time(__TopXMLNS, Call_time),
     decode_mediacall_attr_group_id(__TopXMLNS, Group_id),
     decode_mediacall_attr_call_from(__TopXMLNS, Call_from),
     decode_mediacall_attr_call_mode(__TopXMLNS, Call_mode)}.

encode_mediacall({mediacall,
                  Call_mode,
                  Call_time,
                  Call_from,
                  Call_type,
                  Room_id,
                  Group_id},
                 __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:call">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_mediacall_attr_call_mode(Call_mode,
                                             encode_mediacall_attr_call_from(Call_from,
                                                                             encode_mediacall_attr_group_id(Group_id,
                                                                                                            encode_mediacall_attr_call_time(Call_time,
                                                                                                                                            encode_mediacall_attr_call_type(Call_type,
                                                                                                                                                                            encode_mediacall_attr_room_id(Room_id,
                                                                                                                                                                                                          xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                     __TopXMLNS))))))),
    {xmlel, <<"mediacall">>, _attrs, _els}.

decode_mediacall_attr_room_id(__TopXMLNS, undefined) ->
    <<>>;
decode_mediacall_attr_room_id(__TopXMLNS, _val) -> _val.

encode_mediacall_attr_room_id(<<>>, _acc) -> _acc;
encode_mediacall_attr_room_id(_val, _acc) ->
    [{<<"room_id">>, _val} | _acc].

decode_mediacall_attr_call_type(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_mediacall_attr_call_type(__TopXMLNS, _val) ->
    _val.

encode_mediacall_attr_call_type(<<>>, _acc) -> _acc;
encode_mediacall_attr_call_type(_val, _acc) ->
    [{<<"call_type">>, _val} | _acc].

decode_mediacall_attr_call_time(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_mediacall_attr_call_time(__TopXMLNS, _val) ->
    _val.

encode_mediacall_attr_call_time(<<>>, _acc) -> _acc;
encode_mediacall_attr_call_time(_val, _acc) ->
    [{<<"call_time">>, _val} | _acc].

decode_mediacall_attr_group_id(__TopXMLNS, undefined) ->
    <<>>;
decode_mediacall_attr_group_id(__TopXMLNS, _val) ->
    _val.

encode_mediacall_attr_group_id(<<>>, _acc) -> _acc;
encode_mediacall_attr_group_id(_val, _acc) ->
    [{<<"group_id">>, _val} | _acc].

decode_mediacall_attr_call_from(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_mediacall_attr_call_from(__TopXMLNS, _val) ->
    _val.

encode_mediacall_attr_call_from(<<>>, _acc) -> _acc;
encode_mediacall_attr_call_from(_val, _acc) ->
    [{<<"call_from">>, _val} | _acc].

decode_mediacall_attr_call_mode(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_mediacall_attr_call_mode(__TopXMLNS, _val) ->
    _val.

encode_mediacall_attr_call_mode(<<>>, _acc) -> _acc;
encode_mediacall_attr_call_mode(_val, _acc) ->
    [{<<"call_mode">>, _val} | _acc].
