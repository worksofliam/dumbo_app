**free

ctl-opt dftactgrp(*no);

dcl-pi P2495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P2072.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'

dcl-ds theTable extname('T1320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1320 LIMIT 1;

theCharVar = 'Hello from P2495';
dsply theCharVar;
P993();
P2072();
P1062();
return;