%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(media_call_activities).

-compile(export_all).

do_decode(<<"query">>,
          <<"jabber:iq:media_call_activities">>, El, Opts) ->
    decode_media_call_activities(<<"jabber:iq:media_call_activities">>,
                                 Opts,
                                 El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"jabber:iq:media_call_activities">>}].

do_encode({media_call_activities,
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
           _,
           _,
           _,
           _,
           _} =
              Query,
          TopXMLNS) ->
    encode_media_call_activities(Query, TopXMLNS).

do_get_name({media_call_activities,
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
             _,
             _,
             _,
             _,
             _}) ->
    <<"query">>.

do_get_ns({media_call_activities,
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
           _,
           _,
           _,
           _,
           _}) ->
    <<"jabber:iq:media_call_activities">>.

get_els({media_call_activities,
         _type,
         _status,
         _call_status,
         _start_time,
         _call_mode,
         _call_from,
         _call_time,
         _call_type,
         _end_time,
         _room_id,
         _group_id,
         _profile_name,
         _nick_name,
         _result_type,
         _sub_els}) ->
    _sub_els.

set_els({media_call_activities,
         _type,
         _status,
         _call_status,
         _start_time,
         _call_mode,
         _call_from,
         _call_time,
         _call_type,
         _end_time,
         _room_id,
         _group_id,
         _profile_name,
         _nick_name,
         _result_type,
         _},
        _sub_els) ->
    {media_call_activities,
     _type,
     _status,
     _call_status,
     _start_time,
     _call_mode,
     _call_from,
     _call_time,
     _call_type,
     _end_time,
     _room_id,
     _group_id,
     _profile_name,
     _nick_name,
     _result_type,
     _sub_els}.

pp(media_call_activities, 15) ->
    [type,
     status,
     call_status,
     start_time,
     call_mode,
     call_from,
     call_time,
     call_type,
     end_time,
     room_id,
     group_id,
     profile_name,
     nick_name,
     result_type,
     sub_els];
pp(_, _) -> no.

records() -> [{media_call_activities, 15}].

decode_media_call_activities(__TopXMLNS, __Opts,
                             {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, __Els} =
        decode_media_call_activities_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         <<>>,
                                         []),
    {Type,
     Room_id,
     Group_id,
     Call_status,
     Call_type,
     Call_time,
     Call_mode,
     Profile_name,
     Nick_name,
     Call_from,
     Start_time,
     End_time,
     Status} =
        decode_media_call_activities_attrs(__TopXMLNS,
                                           _attrs,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined,
                                           undefined),
    {media_call_activities,
     Type,
     Status,
     Call_status,
     Start_time,
     Call_mode,
     Call_from,
     Call_time,
     Call_type,
     End_time,
     Room_id,
     Group_id,
     Profile_name,
     Nick_name,
     Result_type,
     __Els}.

decode_media_call_activities_els(__TopXMLNS, __Opts, [],
                                 Result_type, __Els) ->
    {decode_media_call_activities_cdata(__TopXMLNS,
                                        Result_type),
     lists:reverse(__Els)};
decode_media_call_activities_els(__TopXMLNS, __Opts,
                                 [{xmlcdata, _data} | _els], Result_type,
                                 __Els) ->
    decode_media_call_activities_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     <<Result_type/binary, _data/binary>>,
                                     __Els);
decode_media_call_activities_els(__TopXMLNS, __Opts,
                                 [{xmlel, _name, _attrs, _} = _el | _els],
                                 Result_type, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_media_call_activities_els(__TopXMLNS,
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
                    decode_media_call_activities_els(__TopXMLNS,
                                                     __Opts,
                                                     _els,
                                                     Result_type,
                                                     [_el | __Els]);
                Mod ->
                    decode_media_call_activities_els(__TopXMLNS,
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

decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"type">>, _val} | _attrs], _Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       _val,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"room_id">>, _val} | _attrs], Type,
                                   _Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       _val,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"group_id">>, _val} | _attrs], Type,
                                   Room_id, _Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       _val,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"call_status">>, _val} | _attrs], Type,
                                   Room_id, Group_id, _Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       _val,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"call_type">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, _Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       _val,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"call_time">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   _Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       _val,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"call_mode">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, _Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       _val,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"profile_name">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, _Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       _val,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"nick_name">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   _Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       _val,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"call_from">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, _Call_from, Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       _val,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"start_time">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, _Start_time, End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       _val,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"end_time">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, _End_time,
                                   Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       _val,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [{<<"status">>, _val} | _attrs], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   _Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       _val);
decode_media_call_activities_attrs(__TopXMLNS,
                                   [_ | _attrs], Type, Room_id, Group_id,
                                   Call_status, Call_type, Call_time, Call_mode,
                                   Profile_name, Nick_name, Call_from,
                                   Start_time, End_time, Status) ->
    decode_media_call_activities_attrs(__TopXMLNS,
                                       _attrs,
                                       Type,
                                       Room_id,
                                       Group_id,
                                       Call_status,
                                       Call_type,
                                       Call_time,
                                       Call_mode,
                                       Profile_name,
                                       Nick_name,
                                       Call_from,
                                       Start_time,
                                       End_time,
                                       Status);
decode_media_call_activities_attrs(__TopXMLNS, [], Type,
                                   Room_id, Group_id, Call_status, Call_type,
                                   Call_time, Call_mode, Profile_name,
                                   Nick_name, Call_from, Start_time, End_time,
                                   Status) ->
    {decode_media_call_activities_attr_type(__TopXMLNS,
                                            Type),
     decode_media_call_activities_attr_room_id(__TopXMLNS,
                                               Room_id),
     decode_media_call_activities_attr_group_id(__TopXMLNS,
                                                Group_id),
     decode_media_call_activities_attr_call_status(__TopXMLNS,
                                                   Call_status),
     decode_media_call_activities_attr_call_type(__TopXMLNS,
                                                 Call_type),
     decode_media_call_activities_attr_call_time(__TopXMLNS,
                                                 Call_time),
     decode_media_call_activities_attr_call_mode(__TopXMLNS,
                                                 Call_mode),
     decode_media_call_activities_attr_profile_name(__TopXMLNS,
                                                    Profile_name),
     decode_media_call_activities_attr_nick_name(__TopXMLNS,
                                                 Nick_name),
     decode_media_call_activities_attr_call_from(__TopXMLNS,
                                                 Call_from),
     decode_media_call_activities_attr_start_time(__TopXMLNS,
                                                  Start_time),
     decode_media_call_activities_attr_end_time(__TopXMLNS,
                                                End_time),
     decode_media_call_activities_attr_status(__TopXMLNS,
                                              Status)}.

encode_media_call_activities({media_call_activities,
                              Type,
                              Status,
                              Call_status,
                              Start_time,
                              Call_mode,
                              Call_from,
                              Call_time,
                              Call_type,
                              End_time,
                              Room_id,
                              Group_id,
                              Profile_name,
                              Nick_name,
                              Result_type,
                              __Els},
                             __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:media_call_activities">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++ encode_media_call_activities_cdata(Result_type, []),
    _attrs =
        encode_media_call_activities_attr_status(Status,
                                                 encode_media_call_activities_attr_end_time(End_time,
                                                                                            encode_media_call_activities_attr_start_time(Start_time,
                                                                                                                                         encode_media_call_activities_attr_call_from(Call_from,
                                                                                                                                                                                     encode_media_call_activities_attr_nick_name(Nick_name,
                                                                                                                                                                                                                                 encode_media_call_activities_attr_profile_name(Profile_name,
                                                                                                                                                                                                                                                                                encode_media_call_activities_attr_call_mode(Call_mode,
                                                                                                                                                                                                                                                                                                                            encode_media_call_activities_attr_call_time(Call_time,
                                                                                                                                                                                                                                                                                                                                                                        encode_media_call_activities_attr_call_type(Call_type,
                                                                                                                                                                                                                                                                                                                                                                                                                    encode_media_call_activities_attr_call_status(Call_status,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  encode_media_call_activities_attr_group_id(Group_id,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             encode_media_call_activities_attr_room_id(Room_id,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       encode_media_call_activities_attr_type(Type,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         __TopXMLNS)))))))))))))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_media_call_activities_attr_type(__TopXMLNS,
                                       undefined) ->
    <<>>;
decode_media_call_activities_attr_type(__TopXMLNS,
                                       _val) ->
    _val.

encode_media_call_activities_attr_type(<<>>, _acc) ->
    _acc;
encode_media_call_activities_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_media_call_activities_attr_room_id(__TopXMLNS,
                                          undefined) ->
    <<>>;
decode_media_call_activities_attr_room_id(__TopXMLNS,
                                          _val) ->
    _val.

encode_media_call_activities_attr_room_id(<<>>, _acc) ->
    _acc;
encode_media_call_activities_attr_room_id(_val, _acc) ->
    [{<<"room_id">>, _val} | _acc].

decode_media_call_activities_attr_group_id(__TopXMLNS,
                                           undefined) ->
    <<>>;
decode_media_call_activities_attr_group_id(__TopXMLNS,
                                           _val) ->
    _val.

encode_media_call_activities_attr_group_id(<<>>,
                                           _acc) ->
    _acc;
encode_media_call_activities_attr_group_id(_val,
                                           _acc) ->
    [{<<"group_id">>, _val} | _acc].

decode_media_call_activities_attr_call_status(__TopXMLNS,
                                              undefined) ->
    <<>>;
decode_media_call_activities_attr_call_status(__TopXMLNS,
                                              _val) ->
    _val.

encode_media_call_activities_attr_call_status(<<>>,
                                              _acc) ->
    _acc;
encode_media_call_activities_attr_call_status(_val,
                                              _acc) ->
    [{<<"call_status">>, _val} | _acc].

decode_media_call_activities_attr_call_type(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_media_call_activities_attr_call_type(__TopXMLNS,
                                            _val) ->
    _val.

encode_media_call_activities_attr_call_type(<<>>,
                                            _acc) ->
    _acc;
encode_media_call_activities_attr_call_type(_val,
                                            _acc) ->
    [{<<"call_type">>, _val} | _acc].

decode_media_call_activities_attr_call_time(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_media_call_activities_attr_call_time(__TopXMLNS,
                                            _val) ->
    _val.

encode_media_call_activities_attr_call_time(<<>>,
                                            _acc) ->
    _acc;
encode_media_call_activities_attr_call_time(_val,
                                            _acc) ->
    [{<<"call_time">>, _val} | _acc].

decode_media_call_activities_attr_call_mode(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_media_call_activities_attr_call_mode(__TopXMLNS,
                                            _val) ->
    _val.

encode_media_call_activities_attr_call_mode(<<>>,
                                            _acc) ->
    _acc;
encode_media_call_activities_attr_call_mode(_val,
                                            _acc) ->
    [{<<"call_mode">>, _val} | _acc].

decode_media_call_activities_attr_profile_name(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_media_call_activities_attr_profile_name(__TopXMLNS,
                                               _val) ->
    _val.

encode_media_call_activities_attr_profile_name(<<>>,
                                               _acc) ->
    _acc;
encode_media_call_activities_attr_profile_name(_val,
                                               _acc) ->
    [{<<"profile_name">>, _val} | _acc].

decode_media_call_activities_attr_nick_name(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_media_call_activities_attr_nick_name(__TopXMLNS,
                                            _val) ->
    _val.

encode_media_call_activities_attr_nick_name(<<>>,
                                            _acc) ->
    _acc;
encode_media_call_activities_attr_nick_name(_val,
                                            _acc) ->
    [{<<"nick_name">>, _val} | _acc].

decode_media_call_activities_attr_call_from(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_media_call_activities_attr_call_from(__TopXMLNS,
                                            _val) ->
    _val.

encode_media_call_activities_attr_call_from(<<>>,
                                            _acc) ->
    _acc;
encode_media_call_activities_attr_call_from(_val,
                                            _acc) ->
    [{<<"call_from">>, _val} | _acc].

decode_media_call_activities_attr_start_time(__TopXMLNS,
                                             undefined) ->
    <<>>;
decode_media_call_activities_attr_start_time(__TopXMLNS,
                                             _val) ->
    _val.

encode_media_call_activities_attr_start_time(<<>>,
                                             _acc) ->
    _acc;
encode_media_call_activities_attr_start_time(_val,
                                             _acc) ->
    [{<<"start_time">>, _val} | _acc].

decode_media_call_activities_attr_end_time(__TopXMLNS,
                                           undefined) ->
    <<>>;
decode_media_call_activities_attr_end_time(__TopXMLNS,
                                           _val) ->
    _val.

encode_media_call_activities_attr_end_time(<<>>,
                                           _acc) ->
    _acc;
encode_media_call_activities_attr_end_time(_val,
                                           _acc) ->
    [{<<"end_time">>, _val} | _acc].

decode_media_call_activities_attr_status(__TopXMLNS,
                                         undefined) ->
    <<>>;
decode_media_call_activities_attr_status(__TopXMLNS,
                                         _val) ->
    _val.

encode_media_call_activities_attr_status(<<>>, _acc) ->
    _acc;
encode_media_call_activities_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_media_call_activities_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_media_call_activities_cdata(__TopXMLNS, _val) ->
    _val.

encode_media_call_activities_cdata(<<>>, _acc) -> _acc;
encode_media_call_activities_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
