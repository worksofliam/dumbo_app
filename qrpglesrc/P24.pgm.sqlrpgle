**free

ctl-opt dftactgrp(*no);

dcl-pi P24;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T594') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T594 LIMIT 1;

theCharVar = 'Hello from P24';
dsply theCharVar;
P9();
P20();
P19();
return;