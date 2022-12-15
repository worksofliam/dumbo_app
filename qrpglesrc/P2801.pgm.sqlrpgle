**free

ctl-opt dftactgrp(*no);

dcl-pi P2801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2542.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P2265.rpgleinc'

dcl-ds T752 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T752 FROM T752 LIMIT 1;

theCharVar = 'Hello from P2801';
dsply theCharVar;
P2542();
P17();
P2265();
return;