**free

ctl-opt dftactgrp(*no);

dcl-pi P4136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3465.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'
/copy 'qrpgleref/P2274.rpgleinc'

dcl-ds T1566 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1566 FROM T1566 LIMIT 1;

theCharVar = 'Hello from P4136';
dsply theCharVar;
P3465();
P2388();
P2274();
return;