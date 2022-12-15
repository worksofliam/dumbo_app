**free

ctl-opt dftactgrp(*no);

dcl-pi P2412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P1236.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'

dcl-ds theTable extname('T1798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1798 LIMIT 1;

theCharVar = 'Hello from P2412';
dsply theCharVar;
P512();
P1236();
P2186();
return;