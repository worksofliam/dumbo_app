**free

ctl-opt dftactgrp(*no);

dcl-pi P1437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds theTable extname('T4') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T4 LIMIT 1;

theCharVar = 'Hello from P1437';
dsply theCharVar;
P193();
P325();
P699();
return;