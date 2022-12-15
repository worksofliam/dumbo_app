**free

ctl-opt dftactgrp(*no);

dcl-pi P339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds T283 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T283 FROM T283 LIMIT 1;

theCharVar = 'Hello from P339';
dsply theCharVar;
P269();
P119();
P172();
return;