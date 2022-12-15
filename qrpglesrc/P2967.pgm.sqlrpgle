**free

ctl-opt dftactgrp(*no);

dcl-pi P2967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2251.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'
/copy 'qrpgleref/P2718.rpgleinc'

dcl-ds T1012 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1012 FROM T1012 LIMIT 1;

theCharVar = 'Hello from P2967';
dsply theCharVar;
P2251();
P1291();
P2718();
return;