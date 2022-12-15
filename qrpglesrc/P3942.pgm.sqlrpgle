**free

ctl-opt dftactgrp(*no);

dcl-pi P3942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2993.rpgleinc'
/copy 'qrpgleref/P3475.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds T19 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T19 FROM T19 LIMIT 1;

theCharVar = 'Hello from P3942';
dsply theCharVar;
P2993();
P3475();
P579();
return;