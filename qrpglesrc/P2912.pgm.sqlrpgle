**free

ctl-opt dftactgrp(*no);

dcl-pi P2912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P2553.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'

dcl-ds theTable extname('T823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T823 LIMIT 1;

theCharVar = 'Hello from P2912';
dsply theCharVar;
P657();
P2553();
P1512();
return;