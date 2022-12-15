**free

ctl-opt dftactgrp(*no);

dcl-pi P2823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P2396.rpgleinc'

dcl-ds T1236 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1236 FROM T1236 LIMIT 1;

theCharVar = 'Hello from P2823';
dsply theCharVar;
P1418();
P1101();
P2396();
return;