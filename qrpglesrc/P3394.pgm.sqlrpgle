**free

ctl-opt dftactgrp(*no);

dcl-pi P3394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1393.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P2767.rpgleinc'

dcl-ds T324 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T324 FROM T324 LIMIT 1;

theCharVar = 'Hello from P3394';
dsply theCharVar;
P1393();
P247();
P2767();
return;