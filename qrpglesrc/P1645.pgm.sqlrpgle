**free

ctl-opt dftactgrp(*no);

dcl-pi P1645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1511.rpgleinc'
/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P1569.rpgleinc'

dcl-ds T583 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T583 FROM T583 LIMIT 1;

theCharVar = 'Hello from P1645';
dsply theCharVar;
P1511();
P1214();
P1569();
return;