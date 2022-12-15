**free

ctl-opt dftactgrp(*no);

dcl-pi P446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P446';
dsply theCharVar;
P108();
P2();
P308();
return;