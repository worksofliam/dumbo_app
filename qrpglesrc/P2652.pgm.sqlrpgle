**free

ctl-opt dftactgrp(*no);

dcl-pi P2652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2577.rpgleinc'
/copy 'qrpgleref/P2253.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds T1305 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1305 FROM T1305 LIMIT 1;

theCharVar = 'Hello from P2652';
dsply theCharVar;
P2577();
P2253();
P737();
return;