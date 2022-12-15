**free

ctl-opt dftactgrp(*no);

dcl-pi P3051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'
/copy 'qrpgleref/P2983.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P3051';
dsply theCharVar;
P178();
P1836();
P2983();
return;