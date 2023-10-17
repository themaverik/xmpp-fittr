%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(rfc6121).

-compile(export_all).

do_decode(<<"ver">>, <<"urn:xmpp:features:rosterver">>,
          El, Opts) ->
    decode_rosterver_feature(<<"urn:xmpp:features:rosterver">>,
                             Opts,
                             El);
do_decode(<<"email">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_email(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"designation">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_designation(<<"jabber:iq:roster">>,
                              Opts,
                              El);
do_decode(<<"notificationstatus">>,
          <<"jabber:iq:roster">>, El, Opts) ->
    decode_roster_notification(<<"jabber:iq:roster">>,
                               Opts,
                               El);
do_decode(<<"status">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_status(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"coverimg">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_coverimg(<<"jabber:iq:roster">>,
                           Opts,
                           El);
do_decode(<<"mobileNumber">>, <<"jabber:iq:roster">>,
          El, Opts) ->
    decode_roster_mobilenumber(<<"jabber:iq:roster">>,
                               Opts,
                               El);
do_decode(<<"name">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_name(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"image">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_image(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"nickName">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_nickname(<<"jabber:iq:roster">>,
                           Opts,
                           El);
do_decode(<<"vCard">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_vcard(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"profile">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_profile(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"query">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_query(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"item">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_item(<<"jabber:iq:roster">>, Opts, El);
do_decode(<<"group">>, <<"jabber:iq:roster">>, El,
          Opts) ->
    decode_roster_group(<<"jabber:iq:roster">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"ver">>, <<"urn:xmpp:features:rosterver">>},
     {<<"email">>, <<"jabber:iq:roster">>},
     {<<"designation">>, <<"jabber:iq:roster">>},
     {<<"notificationstatus">>, <<"jabber:iq:roster">>},
     {<<"status">>, <<"jabber:iq:roster">>},
     {<<"coverimg">>, <<"jabber:iq:roster">>},
     {<<"mobileNumber">>, <<"jabber:iq:roster">>},
     {<<"name">>, <<"jabber:iq:roster">>},
     {<<"image">>, <<"jabber:iq:roster">>},
     {<<"nickName">>, <<"jabber:iq:roster">>},
     {<<"vCard">>, <<"jabber:iq:roster">>},
     {<<"profile">>, <<"jabber:iq:roster">>},
     {<<"query">>, <<"jabber:iq:roster">>},
     {<<"item">>, <<"jabber:iq:roster">>},
     {<<"group">>, <<"jabber:iq:roster">>}].

do_encode({roster_item, _, _, _, _, _, _, _} = Item,
          TopXMLNS) ->
    encode_roster_item(Item, TopXMLNS);
do_encode({roster_query, _, _, _} = Query, TopXMLNS) ->
    encode_roster_query(Query, TopXMLNS);
do_encode({roster_profile, _} = Profile, TopXMLNS) ->
    encode_roster_profile(Profile, TopXMLNS);
do_encode({roster_vcard, _, _, _, _, _, _, _, _, _, _} =
              Vcard,
          TopXMLNS) ->
    encode_roster_vcard(Vcard, TopXMLNS);
do_encode({roster_nickname, _} = Nickname, TopXMLNS) ->
    encode_roster_nickname(Nickname, TopXMLNS);
do_encode({roster_image, _} = Image, TopXMLNS) ->
    encode_roster_image(Image, TopXMLNS);
do_encode({roster_name, _} = Name, TopXMLNS) ->
    encode_roster_name(Name, TopXMLNS);
do_encode({roster_mobilenumber, _} = Mobilenumber,
          TopXMLNS) ->
    encode_roster_mobilenumber(Mobilenumber, TopXMLNS);
do_encode({roster_coverimg, _} = Coverimg, TopXMLNS) ->
    encode_roster_coverimg(Coverimg, TopXMLNS);
do_encode({roster_status, _} = Status, TopXMLNS) ->
    encode_roster_status(Status, TopXMLNS);
do_encode({roster_notification, _} = Notificationstatus,
          TopXMLNS) ->
    encode_roster_notification(Notificationstatus,
                               TopXMLNS);
do_encode({roster_designation, _} = Designation,
          TopXMLNS) ->
    encode_roster_designation(Designation, TopXMLNS);
do_encode({roster_email, _} = Email, TopXMLNS) ->
    encode_roster_email(Email, TopXMLNS);
do_encode({rosterver_feature} = Ver, TopXMLNS) ->
    encode_rosterver_feature(Ver, TopXMLNS).

do_get_name({roster_coverimg, _}) -> <<"coverimg">>;
do_get_name({roster_designation, _}) ->
    <<"designation">>;
do_get_name({roster_email, _}) -> <<"email">>;
do_get_name({roster_image, _}) -> <<"image">>;
do_get_name({roster_item, _, _, _, _, _, _, _}) ->
    <<"item">>;
do_get_name({roster_mobilenumber, _}) ->
    <<"mobileNumber">>;
do_get_name({roster_name, _}) -> <<"name">>;
do_get_name({roster_nickname, _}) -> <<"nickName">>;
do_get_name({roster_notification, _}) ->
    <<"notificationstatus">>;
do_get_name({roster_profile, _}) -> <<"profile">>;
do_get_name({roster_query, _, _, _}) -> <<"query">>;
do_get_name({roster_status, _}) -> <<"status">>;
do_get_name({roster_vcard,
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
    <<"vCard">>;
do_get_name({rosterver_feature}) -> <<"ver">>.

do_get_ns({roster_coverimg, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_designation, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_email, _}) -> <<"jabber:iq:roster">>;
do_get_ns({roster_image, _}) -> <<"jabber:iq:roster">>;
do_get_ns({roster_item, _, _, _, _, _, _, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_mobilenumber, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_name, _}) -> <<"jabber:iq:roster">>;
do_get_ns({roster_nickname, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_notification, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_profile, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_query, _, _, _}) ->
    <<"jabber:iq:roster">>;
do_get_ns({roster_status, _}) -> <<"jabber:iq:roster">>;
do_get_ns({roster_vcard,
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
    <<"jabber:iq:roster">>;
do_get_ns({rosterver_feature}) ->
    <<"urn:xmpp:features:rosterver">>.

pp(roster_item, 7) ->
    [jid,
     name,
     groups,
     subscription,
     ask,
     profiles,
     mix_channel];
pp(roster_query, 3) -> [items, ver, mix_annotate];
pp(roster_profile, 1) -> [vCard];
pp(roster_vcard, 10) ->
    [roster_vcard,
     roster_nickname,
     roster_status,
     roster_mobilenumber,
     roster_coverimg,
     roster_designation,
     roster_name,
     roster_image,
     roster_email,
     roster_notification];
pp(roster_nickname, 1) -> [roster_nickname];
pp(roster_image, 1) -> [roster_image];
pp(roster_name, 1) -> [roster_name];
pp(roster_mobilenumber, 1) -> [roster_mobilenumber];
pp(roster_coverimg, 1) -> [roster_coverimg];
pp(roster_status, 1) -> [roster_status];
pp(roster_notification, 1) -> [roster_notification];
pp(roster_designation, 1) -> [roster_designation];
pp(roster_email, 1) -> [roster_email];
pp(rosterver_feature, 0) -> [];
pp(_, _) -> no.

records() ->
    [{roster_item, 7},
     {roster_query, 3},
     {roster_profile, 1},
     {roster_vcard, 10},
     {roster_nickname, 1},
     {roster_image, 1},
     {roster_name, 1},
     {roster_mobilenumber, 1},
     {roster_coverimg, 1},
     {roster_status, 1},
     {roster_notification, 1},
     {roster_designation, 1},
     {roster_email, 1},
     {rosterver_feature, 0}].

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
        true -> AtomVal
    end.

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

decode_rosterver_feature(__TopXMLNS, __Opts,
                         {xmlel, <<"ver">>, _attrs, _els}) ->
    {rosterver_feature}.

encode_rosterver_feature({rosterver_feature},
                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:features:rosterver">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"ver">>, _attrs, _els}.

decode_roster_email(__TopXMLNS, __Opts,
                    {xmlel, <<"email">>, _attrs, _els}) ->
    Roster_email = decode_roster_email_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           <<>>),
    {roster_email, Roster_email}.

decode_roster_email_els(__TopXMLNS, __Opts, [],
                        Roster_email) ->
    decode_roster_email_cdata(__TopXMLNS, Roster_email);
decode_roster_email_els(__TopXMLNS, __Opts,
                        [{xmlcdata, _data} | _els], Roster_email) ->
    decode_roster_email_els(__TopXMLNS,
                            __Opts,
                            _els,
                            <<Roster_email/binary, _data/binary>>);
decode_roster_email_els(__TopXMLNS, __Opts, [_ | _els],
                        Roster_email) ->
    decode_roster_email_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Roster_email).

encode_roster_email({roster_email, Roster_email},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_email_cdata(Roster_email, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"email">>, _attrs, _els}.

decode_roster_email_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_email_cdata(__TopXMLNS, _val) -> _val.

encode_roster_email_cdata(<<>>, _acc) -> _acc;
encode_roster_email_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_designation(__TopXMLNS, __Opts,
                          {xmlel, <<"designation">>, _attrs, _els}) ->
    Roster_designation =
        decode_roster_designation_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      <<>>),
    {roster_designation, Roster_designation}.

decode_roster_designation_els(__TopXMLNS, __Opts, [],
                              Roster_designation) ->
    decode_roster_designation_cdata(__TopXMLNS,
                                    Roster_designation);
decode_roster_designation_els(__TopXMLNS, __Opts,
                              [{xmlcdata, _data} | _els], Roster_designation) ->
    decode_roster_designation_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  <<Roster_designation/binary, _data/binary>>);
decode_roster_designation_els(__TopXMLNS, __Opts,
                              [_ | _els], Roster_designation) ->
    decode_roster_designation_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Roster_designation).

encode_roster_designation({roster_designation,
                           Roster_designation},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        encode_roster_designation_cdata(Roster_designation, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"designation">>, _attrs, _els}.

decode_roster_designation_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_roster_designation_cdata(__TopXMLNS, _val) ->
    _val.

encode_roster_designation_cdata(<<>>, _acc) -> _acc;
encode_roster_designation_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_notification(__TopXMLNS, __Opts,
                           {xmlel, <<"notificationstatus">>, _attrs, _els}) ->
    Roster_notification =
        decode_roster_notification_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       <<>>),
    {roster_notification, Roster_notification}.

decode_roster_notification_els(__TopXMLNS, __Opts, [],
                               Roster_notification) ->
    decode_roster_notification_cdata(__TopXMLNS,
                                     Roster_notification);
decode_roster_notification_els(__TopXMLNS, __Opts,
                               [{xmlcdata, _data} | _els],
                               Roster_notification) ->
    decode_roster_notification_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   <<Roster_notification/binary,
                                     _data/binary>>);
decode_roster_notification_els(__TopXMLNS, __Opts,
                               [_ | _els], Roster_notification) ->
    decode_roster_notification_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Roster_notification).

encode_roster_notification({roster_notification,
                            Roster_notification},
                           __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        encode_roster_notification_cdata(Roster_notification,
                                         []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"notificationstatus">>, _attrs, _els}.

decode_roster_notification_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_roster_notification_cdata(__TopXMLNS, _val) ->
    _val.

encode_roster_notification_cdata(<<>>, _acc) -> _acc;
encode_roster_notification_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_status(__TopXMLNS, __Opts,
                     {xmlel, <<"status">>, _attrs, _els}) ->
    Roster_status = decode_roster_status_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             <<>>),
    {roster_status, Roster_status}.

decode_roster_status_els(__TopXMLNS, __Opts, [],
                         Roster_status) ->
    decode_roster_status_cdata(__TopXMLNS, Roster_status);
decode_roster_status_els(__TopXMLNS, __Opts,
                         [{xmlcdata, _data} | _els], Roster_status) ->
    decode_roster_status_els(__TopXMLNS,
                             __Opts,
                             _els,
                             <<Roster_status/binary, _data/binary>>);
decode_roster_status_els(__TopXMLNS, __Opts, [_ | _els],
                         Roster_status) ->
    decode_roster_status_els(__TopXMLNS,
                             __Opts,
                             _els,
                             Roster_status).

encode_roster_status({roster_status, Roster_status},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_status_cdata(Roster_status, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"status">>, _attrs, _els}.

decode_roster_status_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_status_cdata(__TopXMLNS, _val) -> _val.

encode_roster_status_cdata(<<>>, _acc) -> _acc;
encode_roster_status_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_coverimg(__TopXMLNS, __Opts,
                       {xmlel, <<"coverimg">>, _attrs, _els}) ->
    Roster_coverimg = decode_roster_coverimg_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 <<>>),
    {roster_coverimg, Roster_coverimg}.

decode_roster_coverimg_els(__TopXMLNS, __Opts, [],
                           Roster_coverimg) ->
    decode_roster_coverimg_cdata(__TopXMLNS,
                                 Roster_coverimg);
decode_roster_coverimg_els(__TopXMLNS, __Opts,
                           [{xmlcdata, _data} | _els], Roster_coverimg) ->
    decode_roster_coverimg_els(__TopXMLNS,
                               __Opts,
                               _els,
                               <<Roster_coverimg/binary, _data/binary>>);
decode_roster_coverimg_els(__TopXMLNS, __Opts,
                           [_ | _els], Roster_coverimg) ->
    decode_roster_coverimg_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Roster_coverimg).

encode_roster_coverimg({roster_coverimg,
                        Roster_coverimg},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_coverimg_cdata(Roster_coverimg,
                                        []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"coverimg">>, _attrs, _els}.

decode_roster_coverimg_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_coverimg_cdata(__TopXMLNS, _val) -> _val.

encode_roster_coverimg_cdata(<<>>, _acc) -> _acc;
encode_roster_coverimg_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_mobilenumber(__TopXMLNS, __Opts,
                           {xmlel, <<"mobileNumber">>, _attrs, _els}) ->
    Roster_mobilenumber =
        decode_roster_mobilenumber_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       <<>>),
    {roster_mobilenumber, Roster_mobilenumber}.

decode_roster_mobilenumber_els(__TopXMLNS, __Opts, [],
                               Roster_mobilenumber) ->
    decode_roster_mobilenumber_cdata(__TopXMLNS,
                                     Roster_mobilenumber);
decode_roster_mobilenumber_els(__TopXMLNS, __Opts,
                               [{xmlcdata, _data} | _els],
                               Roster_mobilenumber) ->
    decode_roster_mobilenumber_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   <<Roster_mobilenumber/binary,
                                     _data/binary>>);
decode_roster_mobilenumber_els(__TopXMLNS, __Opts,
                               [_ | _els], Roster_mobilenumber) ->
    decode_roster_mobilenumber_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Roster_mobilenumber).

encode_roster_mobilenumber({roster_mobilenumber,
                            Roster_mobilenumber},
                           __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        encode_roster_mobilenumber_cdata(Roster_mobilenumber,
                                         []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"mobileNumber">>, _attrs, _els}.

decode_roster_mobilenumber_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_roster_mobilenumber_cdata(__TopXMLNS, _val) ->
    _val.

encode_roster_mobilenumber_cdata(<<>>, _acc) -> _acc;
encode_roster_mobilenumber_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_name(__TopXMLNS, __Opts,
                   {xmlel, <<"name">>, _attrs, _els}) ->
    Roster_name = decode_roster_name_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         <<>>),
    {roster_name, Roster_name}.

decode_roster_name_els(__TopXMLNS, __Opts, [],
                       Roster_name) ->
    decode_roster_name_cdata(__TopXMLNS, Roster_name);
decode_roster_name_els(__TopXMLNS, __Opts,
                       [{xmlcdata, _data} | _els], Roster_name) ->
    decode_roster_name_els(__TopXMLNS,
                           __Opts,
                           _els,
                           <<Roster_name/binary, _data/binary>>);
decode_roster_name_els(__TopXMLNS, __Opts, [_ | _els],
                       Roster_name) ->
    decode_roster_name_els(__TopXMLNS,
                           __Opts,
                           _els,
                           Roster_name).

encode_roster_name({roster_name, Roster_name},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_name_cdata(Roster_name, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_roster_name_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_name_cdata(__TopXMLNS, _val) -> _val.

encode_roster_name_cdata(<<>>, _acc) -> _acc;
encode_roster_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_image(__TopXMLNS, __Opts,
                    {xmlel, <<"image">>, _attrs, _els}) ->
    Roster_image = decode_roster_image_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           <<>>),
    {roster_image, Roster_image}.

decode_roster_image_els(__TopXMLNS, __Opts, [],
                        Roster_image) ->
    decode_roster_image_cdata(__TopXMLNS, Roster_image);
decode_roster_image_els(__TopXMLNS, __Opts,
                        [{xmlcdata, _data} | _els], Roster_image) ->
    decode_roster_image_els(__TopXMLNS,
                            __Opts,
                            _els,
                            <<Roster_image/binary, _data/binary>>);
decode_roster_image_els(__TopXMLNS, __Opts, [_ | _els],
                        Roster_image) ->
    decode_roster_image_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Roster_image).

encode_roster_image({roster_image, Roster_image},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_image_cdata(Roster_image, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"image">>, _attrs, _els}.

decode_roster_image_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_image_cdata(__TopXMLNS, _val) -> _val.

encode_roster_image_cdata(<<>>, _acc) -> _acc;
encode_roster_image_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_nickname(__TopXMLNS, __Opts,
                       {xmlel, <<"nickName">>, _attrs, _els}) ->
    Roster_nickname = decode_roster_nickname_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 <<>>),
    {roster_nickname, Roster_nickname}.

decode_roster_nickname_els(__TopXMLNS, __Opts, [],
                           Roster_nickname) ->
    decode_roster_nickname_cdata(__TopXMLNS,
                                 Roster_nickname);
decode_roster_nickname_els(__TopXMLNS, __Opts,
                           [{xmlcdata, _data} | _els], Roster_nickname) ->
    decode_roster_nickname_els(__TopXMLNS,
                               __Opts,
                               _els,
                               <<Roster_nickname/binary, _data/binary>>);
decode_roster_nickname_els(__TopXMLNS, __Opts,
                           [_ | _els], Roster_nickname) ->
    decode_roster_nickname_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Roster_nickname).

encode_roster_nickname({roster_nickname,
                        Roster_nickname},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_nickname_cdata(Roster_nickname,
                                        []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"nickName">>, _attrs, _els}.

decode_roster_nickname_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_nickname_cdata(__TopXMLNS, _val) -> _val.

encode_roster_nickname_cdata(<<>>, _acc) -> _acc;
encode_roster_nickname_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_vcard(__TopXMLNS, __Opts,
                    {xmlel, <<"vCard">>, _attrs, _els}) ->
    {Roster_vcard,
     Roster_mobilenumber,
     Roster_status,
     Roster_image,
     Roster_name,
     Roster_nickname,
     Roster_coverimg,
     Roster_email,
     Roster_designation,
     Roster_notification} =
        decode_roster_vcard_els(__TopXMLNS,
                                __Opts,
                                _els,
                                <<>>,
                                [],
                                [],
                                [],
                                [],
                                [],
                                [],
                                [],
                                [],
                                []),
    {roster_vcard,
     Roster_vcard,
     Roster_nickname,
     Roster_status,
     Roster_mobilenumber,
     Roster_coverimg,
     Roster_designation,
     Roster_name,
     Roster_image,
     Roster_email,
     Roster_notification}.

decode_roster_vcard_els(__TopXMLNS, __Opts, [],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    {decode_roster_vcard_cdata(__TopXMLNS, Roster_vcard),
     lists:reverse(Roster_mobilenumber),
     lists:reverse(Roster_status),
     lists:reverse(Roster_image),
     lists:reverse(Roster_name),
     lists:reverse(Roster_nickname),
     lists:reverse(Roster_coverimg),
     lists:reverse(Roster_email),
     lists:reverse(Roster_designation),
     lists:reverse(Roster_notification)};
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlcdata, _data} | _els], Roster_vcard,
                        Roster_mobilenumber, Roster_status, Roster_image,
                        Roster_name, Roster_nickname, Roster_coverimg,
                        Roster_email, Roster_designation,
                        Roster_notification) ->
    decode_roster_vcard_els(__TopXMLNS,
                            __Opts,
                            _els,
                            <<Roster_vcard/binary, _data/binary>>,
                            Roster_mobilenumber,
                            Roster_status,
                            Roster_image,
                            Roster_name,
                            Roster_nickname,
                            Roster_coverimg,
                            Roster_email,
                            Roster_designation,
                            Roster_notification);
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"nickName">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    [decode_roster_nickname(<<"jabber:iq:roster">>,
                                                            __Opts,
                                                            _el)
                                     | Roster_nickname],
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"name">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    [decode_roster_name(<<"jabber:iq:roster">>,
                                                        __Opts,
                                                        _el)
                                     | Roster_name],
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"image">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    [decode_roster_image(<<"jabber:iq:roster">>,
                                                         __Opts,
                                                         _el)
                                     | Roster_image],
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"email">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    [decode_roster_email(<<"jabber:iq:roster">>,
                                                         __Opts,
                                                         _el)
                                     | Roster_email],
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"mobileNumber">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    [decode_roster_mobilenumber(<<"jabber:iq:roster">>,
                                                                __Opts,
                                                                _el)
                                     | Roster_mobilenumber],
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"notificationstatus">>, _attrs, _} = _el
                         | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    [decode_roster_notification(<<"jabber:iq:roster">>,
                                                                __Opts,
                                                                _el)
                                     | Roster_notification]);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"coverimg">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    [decode_roster_coverimg(<<"jabber:iq:roster">>,
                                                            __Opts,
                                                            _el)
                                     | Roster_coverimg],
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"designation">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    [decode_roster_designation(<<"jabber:iq:roster">>,
                                                               __Opts,
                                                               _el)
                                     | Roster_designation],
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"status">>, _attrs, _} = _el | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    [decode_roster_status(<<"jabber:iq:roster">>,
                                                          __Opts,
                                                          _el)
                                     | Roster_status],
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification);
        _ ->
            decode_roster_vcard_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Roster_vcard,
                                    Roster_mobilenumber,
                                    Roster_status,
                                    Roster_image,
                                    Roster_name,
                                    Roster_nickname,
                                    Roster_coverimg,
                                    Roster_email,
                                    Roster_designation,
                                    Roster_notification)
    end;
decode_roster_vcard_els(__TopXMLNS, __Opts, [_ | _els],
                        Roster_vcard, Roster_mobilenumber, Roster_status,
                        Roster_image, Roster_name, Roster_nickname,
                        Roster_coverimg, Roster_email, Roster_designation,
                        Roster_notification) ->
    decode_roster_vcard_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Roster_vcard,
                            Roster_mobilenumber,
                            Roster_status,
                            Roster_image,
                            Roster_name,
                            Roster_nickname,
                            Roster_coverimg,
                            Roster_email,
                            Roster_designation,
                            Roster_notification).

encode_roster_vcard({roster_vcard,
                     Roster_vcard,
                     Roster_nickname,
                     Roster_status,
                     Roster_mobilenumber,
                     Roster_coverimg,
                     Roster_designation,
                     Roster_name,
                     Roster_image,
                     Roster_email,
                     Roster_notification},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse(encode_roster_vcard_cdata(Roster_vcard,
                                                'encode_roster_vcard_$roster_mobilenumber'(Roster_mobilenumber,
                                                                                           __NewTopXMLNS,
                                                                                           'encode_roster_vcard_$roster_status'(Roster_status,
                                                                                                                                __NewTopXMLNS,
                                                                                                                                'encode_roster_vcard_$roster_image'(Roster_image,
                                                                                                                                                                    __NewTopXMLNS,
                                                                                                                                                                    'encode_roster_vcard_$roster_name'(Roster_name,
                                                                                                                                                                                                       __NewTopXMLNS,
                                                                                                                                                                                                       'encode_roster_vcard_$roster_nickname'(Roster_nickname,
                                                                                                                                                                                                                                              __NewTopXMLNS,
                                                                                                                                                                                                                                              'encode_roster_vcard_$roster_coverimg'(Roster_coverimg,
                                                                                                                                                                                                                                                                                     __NewTopXMLNS,
                                                                                                                                                                                                                                                                                     'encode_roster_vcard_$roster_email'(Roster_email,
                                                                                                                                                                                                                                                                                                                         __NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                         'encode_roster_vcard_$roster_designation'(Roster_designation,
                                                                                                                                                                                                                                                                                                                                                                   __NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                                                   'encode_roster_vcard_$roster_notification'(Roster_notification,
                                                                                                                                                                                                                                                                                                                                                                                                              __NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                                                                                              []))))))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"vCard">>, _attrs, _els}.

'encode_roster_vcard_$roster_mobilenumber'([],
                                           __TopXMLNS, _acc) ->
    _acc;
'encode_roster_vcard_$roster_mobilenumber'([Roster_mobilenumber
                                            | _els],
                                           __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_mobilenumber'(_els,
                                               __TopXMLNS,
                                               [encode_roster_mobilenumber(Roster_mobilenumber,
                                                                           __TopXMLNS)
                                                | _acc]).

'encode_roster_vcard_$roster_status'([], __TopXMLNS,
                                     _acc) ->
    _acc;
'encode_roster_vcard_$roster_status'([Roster_status
                                      | _els],
                                     __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_status'(_els,
                                         __TopXMLNS,
                                         [encode_roster_status(Roster_status,
                                                               __TopXMLNS)
                                          | _acc]).

'encode_roster_vcard_$roster_image'([], __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_roster_vcard_$roster_image'([Roster_image
                                     | _els],
                                    __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_image'(_els,
                                        __TopXMLNS,
                                        [encode_roster_image(Roster_image,
                                                             __TopXMLNS)
                                         | _acc]).

'encode_roster_vcard_$roster_name'([], __TopXMLNS,
                                   _acc) ->
    _acc;
'encode_roster_vcard_$roster_name'([Roster_name | _els],
                                   __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_name'(_els,
                                       __TopXMLNS,
                                       [encode_roster_name(Roster_name,
                                                           __TopXMLNS)
                                        | _acc]).

'encode_roster_vcard_$roster_nickname'([], __TopXMLNS,
                                       _acc) ->
    _acc;
'encode_roster_vcard_$roster_nickname'([Roster_nickname
                                        | _els],
                                       __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_nickname'(_els,
                                           __TopXMLNS,
                                           [encode_roster_nickname(Roster_nickname,
                                                                   __TopXMLNS)
                                            | _acc]).

'encode_roster_vcard_$roster_coverimg'([], __TopXMLNS,
                                       _acc) ->
    _acc;
'encode_roster_vcard_$roster_coverimg'([Roster_coverimg
                                        | _els],
                                       __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_coverimg'(_els,
                                           __TopXMLNS,
                                           [encode_roster_coverimg(Roster_coverimg,
                                                                   __TopXMLNS)
                                            | _acc]).

'encode_roster_vcard_$roster_email'([], __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_roster_vcard_$roster_email'([Roster_email
                                     | _els],
                                    __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_email'(_els,
                                        __TopXMLNS,
                                        [encode_roster_email(Roster_email,
                                                             __TopXMLNS)
                                         | _acc]).

'encode_roster_vcard_$roster_designation'([],
                                          __TopXMLNS, _acc) ->
    _acc;
'encode_roster_vcard_$roster_designation'([Roster_designation
                                           | _els],
                                          __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_designation'(_els,
                                              __TopXMLNS,
                                              [encode_roster_designation(Roster_designation,
                                                                         __TopXMLNS)
                                               | _acc]).

'encode_roster_vcard_$roster_notification'([],
                                           __TopXMLNS, _acc) ->
    _acc;
'encode_roster_vcard_$roster_notification'([Roster_notification
                                            | _els],
                                           __TopXMLNS, _acc) ->
    'encode_roster_vcard_$roster_notification'(_els,
                                               __TopXMLNS,
                                               [encode_roster_notification(Roster_notification,
                                                                           __TopXMLNS)
                                                | _acc]).

decode_roster_vcard_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_roster_vcard_cdata(__TopXMLNS, _val) -> _val.

encode_roster_vcard_cdata(<<>>, _acc) -> _acc;
encode_roster_vcard_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_roster_profile(__TopXMLNS, __Opts,
                      {xmlel, <<"profile">>, _attrs, _els}) ->
    VCard = decode_roster_profile_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      []),
    {roster_profile, VCard}.

decode_roster_profile_els(__TopXMLNS, __Opts, [],
                          VCard) ->
    lists:reverse(VCard);
decode_roster_profile_els(__TopXMLNS, __Opts,
                          [{xmlel, <<"vCard">>, _attrs, _} = _el | _els],
                          VCard) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_profile_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      [decode_roster_vcard(<<"jabber:iq:roster">>,
                                                           __Opts,
                                                           _el)
                                       | VCard]);
        _ ->
            decode_roster_profile_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      VCard)
    end;
decode_roster_profile_els(__TopXMLNS, __Opts,
                          [_ | _els], VCard) ->
    decode_roster_profile_els(__TopXMLNS,
                              __Opts,
                              _els,
                              VCard).

encode_roster_profile({roster_profile, VCard},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_roster_profile_$vCard'(VCard,
                                                     __NewTopXMLNS,
                                                     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"profile">>, _attrs, _els}.

'encode_roster_profile_$vCard'([], __TopXMLNS, _acc) ->
    _acc;
'encode_roster_profile_$vCard'([VCard | _els],
                               __TopXMLNS, _acc) ->
    'encode_roster_profile_$vCard'(_els,
                                   __TopXMLNS,
                                   [encode_roster_vcard(VCard, __TopXMLNS)
                                    | _acc]).

decode_roster_query(__TopXMLNS, __Opts,
                    {xmlel, <<"query">>, _attrs, _els}) ->
    {Items, Mix_annotate} =
        decode_roster_query_els(__TopXMLNS,
                                __Opts,
                                _els,
                                [],
                                false),
    Ver = decode_roster_query_attrs(__TopXMLNS,
                                    _attrs,
                                    undefined),
    {roster_query, Items, Ver, Mix_annotate}.

decode_roster_query_els(__TopXMLNS, __Opts, [], Items,
                        Mix_annotate) ->
    {lists:reverse(Items), Mix_annotate};
decode_roster_query_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"item">>, _attrs, _} = _el | _els], Items,
                        Mix_annotate) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_query_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    [decode_roster_item(<<"jabber:iq:roster">>,
                                                        __Opts,
                                                        _el)
                                     | Items],
                                    Mix_annotate);
        _ ->
            decode_roster_query_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Items,
                                    Mix_annotate)
    end;
decode_roster_query_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"annotate">>, _attrs, _} = _el | _els],
                        Items, Mix_annotate) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:mix:roster:0">> ->
            decode_roster_query_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Items,
                                    xep0405:decode_mix_roster_annotate(<<"urn:xmpp:mix:roster:0">>,
                                                                       __Opts,
                                                                       _el));
        _ ->
            decode_roster_query_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Items,
                                    Mix_annotate)
    end;
decode_roster_query_els(__TopXMLNS, __Opts, [_ | _els],
                        Items, Mix_annotate) ->
    decode_roster_query_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Items,
                            Mix_annotate).

decode_roster_query_attrs(__TopXMLNS,
                          [{<<"ver">>, _val} | _attrs], _Ver) ->
    decode_roster_query_attrs(__TopXMLNS, _attrs, _val);
decode_roster_query_attrs(__TopXMLNS, [_ | _attrs],
                          Ver) ->
    decode_roster_query_attrs(__TopXMLNS, _attrs, Ver);
decode_roster_query_attrs(__TopXMLNS, [], Ver) ->
    decode_roster_query_attr_ver(__TopXMLNS, Ver).

encode_roster_query({roster_query,
                     Items,
                     Ver,
                     Mix_annotate},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = lists:reverse('encode_roster_query_$items'(Items,
                                                      __NewTopXMLNS,
                                                      'encode_roster_query_$mix_annotate'(Mix_annotate,
                                                                                          __NewTopXMLNS,
                                                                                          []))),
    _attrs = encode_roster_query_attr_ver(Ver,
                                          xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                     __TopXMLNS)),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_roster_query_$items'([], __TopXMLNS, _acc) ->
    _acc;
'encode_roster_query_$items'([Items | _els], __TopXMLNS,
                             _acc) ->
    'encode_roster_query_$items'(_els,
                                 __TopXMLNS,
                                 [encode_roster_item(Items, __TopXMLNS)
                                  | _acc]).

'encode_roster_query_$mix_annotate'(false, __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_roster_query_$mix_annotate'(Mix_annotate,
                                    __TopXMLNS, _acc) ->
    [xep0405:encode_mix_roster_annotate(Mix_annotate,
                                        __TopXMLNS)
     | _acc].

decode_roster_query_attr_ver(__TopXMLNS, undefined) ->
    undefined;
decode_roster_query_attr_ver(__TopXMLNS, _val) -> _val.

encode_roster_query_attr_ver(undefined, _acc) -> _acc;
encode_roster_query_attr_ver(_val, _acc) ->
    [{<<"ver">>, _val} | _acc].

decode_roster_item(__TopXMLNS, __Opts,
                   {xmlel, <<"item">>, _attrs, _els}) ->
    {Profiles, Groups, Mix_channel} =
        decode_roster_item_els(__TopXMLNS,
                               __Opts,
                               _els,
                               [],
                               [],
                               undefined),
    {Jid, Name, Subscription, Ask} =
        decode_roster_item_attrs(__TopXMLNS,
                                 _attrs,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined),
    {roster_item,
     Jid,
     Name,
     Groups,
     Subscription,
     Ask,
     Profiles,
     Mix_channel}.

decode_roster_item_els(__TopXMLNS, __Opts, [], Profiles,
                       Groups, Mix_channel) ->
    {lists:reverse(Profiles),
     lists:reverse(Groups),
     Mix_channel};
decode_roster_item_els(__TopXMLNS, __Opts,
                       [{xmlel, <<"group">>, _attrs, _} = _el | _els],
                       Profiles, Groups, Mix_channel) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Profiles,
                                   [decode_roster_group(<<"jabber:iq:roster">>,
                                                        __Opts,
                                                        _el)
                                    | Groups],
                                   Mix_channel);
        _ ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Profiles,
                                   Groups,
                                   Mix_channel)
    end;
decode_roster_item_els(__TopXMLNS, __Opts,
                       [{xmlel, <<"channel">>, _attrs, _} = _el | _els],
                       Profiles, Groups, Mix_channel) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:mix:roster:0">> ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Profiles,
                                   Groups,
                                   xep0405:decode_mix_roster_channel(<<"urn:xmpp:mix:roster:0">>,
                                                                     __Opts,
                                                                     _el));
        _ ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Profiles,
                                   Groups,
                                   Mix_channel)
    end;
decode_roster_item_els(__TopXMLNS, __Opts,
                       [{xmlel, <<"profile">>, _attrs, _} = _el | _els],
                       Profiles, Groups, Mix_channel) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:iq:roster">> ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   [decode_roster_profile(<<"jabber:iq:roster">>,
                                                          __Opts,
                                                          _el)
                                    | Profiles],
                                   Groups,
                                   Mix_channel);
        _ ->
            decode_roster_item_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Profiles,
                                   Groups,
                                   Mix_channel)
    end;
decode_roster_item_els(__TopXMLNS, __Opts, [_ | _els],
                       Profiles, Groups, Mix_channel) ->
    decode_roster_item_els(__TopXMLNS,
                           __Opts,
                           _els,
                           Profiles,
                           Groups,
                           Mix_channel).

decode_roster_item_attrs(__TopXMLNS,
                         [{<<"jid">>, _val} | _attrs], _Jid, Name, Subscription,
                         Ask) ->
    decode_roster_item_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             Name,
                             Subscription,
                             Ask);
decode_roster_item_attrs(__TopXMLNS,
                         [{<<"name">>, _val} | _attrs], Jid, _Name,
                         Subscription, Ask) ->
    decode_roster_item_attrs(__TopXMLNS,
                             _attrs,
                             Jid,
                             _val,
                             Subscription,
                             Ask);
decode_roster_item_attrs(__TopXMLNS,
                         [{<<"subscription">>, _val} | _attrs], Jid, Name,
                         _Subscription, Ask) ->
    decode_roster_item_attrs(__TopXMLNS,
                             _attrs,
                             Jid,
                             Name,
                             _val,
                             Ask);
decode_roster_item_attrs(__TopXMLNS,
                         [{<<"ask">>, _val} | _attrs], Jid, Name, Subscription,
                         _Ask) ->
    decode_roster_item_attrs(__TopXMLNS,
                             _attrs,
                             Jid,
                             Name,
                             Subscription,
                             _val);
decode_roster_item_attrs(__TopXMLNS, [_ | _attrs], Jid,
                         Name, Subscription, Ask) ->
    decode_roster_item_attrs(__TopXMLNS,
                             _attrs,
                             Jid,
                             Name,
                             Subscription,
                             Ask);
decode_roster_item_attrs(__TopXMLNS, [], Jid, Name,
                         Subscription, Ask) ->
    {decode_roster_item_attr_jid(__TopXMLNS, Jid),
     decode_roster_item_attr_name(__TopXMLNS, Name),
     decode_roster_item_attr_subscription(__TopXMLNS,
                                          Subscription),
     decode_roster_item_attr_ask(__TopXMLNS, Ask)}.

encode_roster_item({roster_item,
                    Jid,
                    Name,
                    Groups,
                    Subscription,
                    Ask,
                    Profiles,
                    Mix_channel},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_roster_item_$profiles'(Profiles,
                                                     __NewTopXMLNS,
                                                     'encode_roster_item_$groups'(Groups,
                                                                                  __NewTopXMLNS,
                                                                                  'encode_roster_item_$mix_channel'(Mix_channel,
                                                                                                                    __NewTopXMLNS,
                                                                                                                    [])))),
    _attrs = encode_roster_item_attr_ask(Ask,
                                         encode_roster_item_attr_subscription(Subscription,
                                                                              encode_roster_item_attr_name(Name,
                                                                                                           encode_roster_item_attr_jid(Jid,
                                                                                                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                  __TopXMLNS))))),
    {xmlel, <<"item">>, _attrs, _els}.

'encode_roster_item_$profiles'([], __TopXMLNS, _acc) ->
    _acc;
'encode_roster_item_$profiles'([Profiles | _els],
                               __TopXMLNS, _acc) ->
    'encode_roster_item_$profiles'(_els,
                                   __TopXMLNS,
                                   [encode_roster_profile(Profiles, __TopXMLNS)
                                    | _acc]).

'encode_roster_item_$groups'([], __TopXMLNS, _acc) ->
    _acc;
'encode_roster_item_$groups'([Groups | _els],
                             __TopXMLNS, _acc) ->
    'encode_roster_item_$groups'(_els,
                                 __TopXMLNS,
                                 [encode_roster_group(Groups, __TopXMLNS)
                                  | _acc]).

'encode_roster_item_$mix_channel'(undefined, __TopXMLNS,
                                  _acc) ->
    _acc;
'encode_roster_item_$mix_channel'(Mix_channel,
                                  __TopXMLNS, _acc) ->
    [xep0405:encode_mix_roster_channel(Mix_channel,
                                       __TopXMLNS)
     | _acc].

decode_roster_item_attr_jid(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"jid">>, <<"item">>, __TopXMLNS}});
decode_roster_item_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value, <<"jid">>, <<"item">>, __TopXMLNS}});
        _res -> _res
    end.

encode_roster_item_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_roster_item_attr_name(__TopXMLNS, undefined) ->
    <<>>;
decode_roster_item_attr_name(__TopXMLNS, _val) -> _val.

encode_roster_item_attr_name(<<>>, _acc) -> _acc;
encode_roster_item_attr_name(_val, _acc) ->
    [{<<"name">>, _val} | _acc].

decode_roster_item_attr_subscription(__TopXMLNS,
                                     undefined) ->
    none;
decode_roster_item_attr_subscription(__TopXMLNS,
                                     _val) ->
    case catch dec_enum(_val,
                        [none, to, from, both, remove])
        of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"subscription">>,
                           <<"item">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_roster_item_attr_subscription(_val, _acc) ->
    [{<<"subscription">>, enc_enum(_val)} | _acc].

decode_roster_item_attr_ask(__TopXMLNS, undefined) ->
    undefined;
decode_roster_item_attr_ask(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [subscribe]) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value, <<"ask">>, <<"item">>, __TopXMLNS}});
        _res -> _res
    end.

encode_roster_item_attr_ask(undefined, _acc) -> _acc;
encode_roster_item_attr_ask(_val, _acc) ->
    [{<<"ask">>, enc_enum(_val)} | _acc].

decode_roster_group(__TopXMLNS, __Opts,
                    {xmlel, <<"group">>, _attrs, _els}) ->
    Cdata = decode_roster_group_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<>>),
    Cdata.

decode_roster_group_els(__TopXMLNS, __Opts, [],
                        Cdata) ->
    decode_roster_group_cdata(__TopXMLNS, Cdata);
decode_roster_group_els(__TopXMLNS, __Opts,
                        [{xmlcdata, _data} | _els], Cdata) ->
    decode_roster_group_els(__TopXMLNS,
                            __Opts,
                            _els,
                            <<Cdata/binary, _data/binary>>);
decode_roster_group_els(__TopXMLNS, __Opts, [_ | _els],
                        Cdata) ->
    decode_roster_group_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Cdata).

encode_roster_group(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:roster">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_roster_group_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"group">>, _attrs, _els}.

decode_roster_group_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"group">>, __TopXMLNS}});
decode_roster_group_cdata(__TopXMLNS, _val) -> _val.

encode_roster_group_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
