**free

ctl-opt dftactgrp(*no);

dcl-pi P3624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'

dcl-ds T1724 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1724 FROM T1724 LIMIT 1;

theCharVar = 'Hello from P3624';
dsply theCharVar;
P789();
P787();
P1011();
return;