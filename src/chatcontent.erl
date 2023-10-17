%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(chatcontent).

-compile(export_all).

do_decode(<<"chatcontent">>, <<"urn:xmpp:content">>, El,
          Opts) ->
    decode_chatcontent(<<"urn:xmpp:content">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"chatcontent">>, <<"urn:xmpp:content">>}].

do_encode({chatcontent, _, _, _, _} = Chatcontent,
          TopXMLNS) ->
    encode_chatcontent(Chatcontent, TopXMLNS).

do_get_name({chatcontent, _, _, _, _}) ->
    <<"chatcontent">>.

do_get_ns({chatcontent, _, _, _, _}) ->
    <<"urn:xmpp:content">>.

pp(chatcontent, 4) ->
    [block_user,
     broadcast_id,
     broadcast_msgid,
     message_type];
pp(_, _) -> no.

records() -> [{chatcontent, 4}].

decode_chatcontent(__TopXMLNS, __Opts,
                   {xmlel, <<"chatcontent">>, _attrs, _els}) ->
    {Block_user,
     Broadcast_id,
     Broadcast_msgid,
     Message_type} =
        decode_chatcontent_attrs(__TopXMLNS,
                                 _attrs,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined),
    {chatcontent,
     Block_user,
     Broadcast_id,
     Broadcast_msgid,
     Message_type}.

decode_chatcontent_attrs(__TopXMLNS,
                         [{<<"block_user">>, _val} | _attrs], _Block_user,
                         Broadcast_id, Broadcast_msgid, Message_type) ->
    decode_chatcontent_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             Broadcast_id,
                             Broadcast_msgid,
                             Message_type);
decode_chatcontent_attrs(__TopXMLNS,
                         [{<<"broadcast_id">>, _val} | _attrs], Block_user,
                         _Broadcast_id, Broadcast_msgid, Message_type) ->
    decode_chatcontent_attrs(__TopXMLNS,
                             _attrs,
                             Block_user,
                             _val,
                             Broadcast_msgid,
                             Message_type);
decode_chatcontent_attrs(__TopXMLNS,
                         [{<<"broadcast_msgid">>, _val} | _attrs], Block_user,
                         Broadcast_id, _Broadcast_msgid, Message_type) ->
    decode_chatcontent_attrs(__TopXMLNS,
                             _attrs,
                             Block_user,
                             Broadcast_id,
                             _val,
                             Message_type);
decode_chatcontent_attrs(__TopXMLNS,
                         [{<<"message_type">>, _val} | _attrs], Block_user,
                         Broadcast_id, Broadcast_msgid, _Message_type) ->
    decode_chatcontent_attrs(__TopXMLNS,
                             _attrs,
                             Block_user,
                             Broadcast_id,
                             Broadcast_msgid,
                             _val);
decode_chatcontent_attrs(__TopXMLNS, [_ | _attrs],
                         Block_user, Broadcast_id, Broadcast_msgid,
                         Message_type) ->
    decode_chatcontent_attrs(__TopXMLNS,
                             _attrs,
                             Block_user,
                             Broadcast_id,
                             Broadcast_msgid,
                             Message_type);
decode_chatcontent_attrs(__TopXMLNS, [], Block_user,
                         Broadcast_id, Broadcast_msgid, Message_type) ->
    {decode_chatcontent_attr_block_user(__TopXMLNS,
                                        Block_user),
     decode_chatcontent_attr_broadcast_id(__TopXMLNS,
                                          Broadcast_id),
     decode_chatcontent_attr_broadcast_msgid(__TopXMLNS,
                                             Broadcast_msgid),
     decode_chatcontent_attr_message_type(__TopXMLNS,
                                          Message_type)}.

encode_chatcontent({chatcontent,
                    Block_user,
                    Broadcast_id,
                    Broadcast_msgid,
                    Message_type},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:content">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_chatcontent_attr_message_type(Message_type,
                                             encode_chatcontent_attr_broadcast_msgid(Broadcast_msgid,
                                                                                     encode_chatcontent_attr_broadcast_id(Broadcast_id,
                                                                                                                          encode_chatcontent_attr_block_user(Block_user,
                                                                                                                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                        __TopXMLNS))))),
    {xmlel, <<"chatcontent">>, _attrs, _els}.

decode_chatcontent_attr_block_user(__TopXMLNS,
                                   undefined) ->
    <<"0">>;
decode_chatcontent_attr_block_user(__TopXMLNS, _val) ->
    _val.

encode_chatcontent_attr_block_user(<<"0">>, _acc) ->
    _acc;
encode_chatcontent_attr_block_user(_val, _acc) ->
    [{<<"block_user">>, _val} | _acc].

decode_chatcontent_attr_broadcast_id(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_chatcontent_attr_broadcast_id(__TopXMLNS,
                                     _val) ->
    _val.

encode_chatcontent_attr_broadcast_id(<<>>, _acc) ->
    _acc;
encode_chatcontent_attr_broadcast_id(_val, _acc) ->
    [{<<"broadcast_id">>, _val} | _acc].

decode_chatcontent_attr_broadcast_msgid(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_chatcontent_attr_broadcast_msgid(__TopXMLNS,
                                        _val) ->
    _val.

encode_chatcontent_attr_broadcast_msgid(<<>>, _acc) ->
    _acc;
encode_chatcontent_attr_broadcast_msgid(_val, _acc) ->
    [{<<"broadcast_msgid">>, _val} | _acc].

decode_chatcontent_attr_message_type(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_chatcontent_attr_message_type(__TopXMLNS,
                                     _val) ->
    _val.

encode_chatcontent_attr_message_type(<<>>, _acc) ->
    _acc;
encode_chatcontent_attr_message_type(_val, _acc) ->
    [{<<"message_type">>, _val} | _acc].
