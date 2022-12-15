**free

ctl-opt dftactgrp(*no);

dcl-pi P3482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P2850.rpgleinc'
/copy 'qrpgleref/P2298.rpgleinc'

dcl-ds T1393 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1393 FROM T1393 LIMIT 1;

theCharVar = 'Hello from P3482';
dsply theCharVar;
P822();
P2850();
P2298();
return;