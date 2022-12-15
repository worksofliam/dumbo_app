**free

ctl-opt dftactgrp(*no);

dcl-pi P3218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2306.rpgleinc'
/copy 'qrpgleref/P2628.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P3218';
dsply theCharVar;
P2306();
P2628();
P253();
return;