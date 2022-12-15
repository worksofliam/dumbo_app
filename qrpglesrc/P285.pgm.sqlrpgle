**free

ctl-opt dftactgrp(*no);

dcl-pi P285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P285';
dsply theCharVar;
P131();
P105();
P260();
return;