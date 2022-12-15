**free

ctl-opt dftactgrp(*no);

dcl-pi P5487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2588.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P1731.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P5487';
dsply theCharVar;
P2588();
P761();
P1731();
return;