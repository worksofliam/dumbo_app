**free

ctl-opt dftactgrp(*no);

dcl-pi P2354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P2336.rpgleinc'

dcl-ds theTable extname('T1028') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1028 LIMIT 1;

theCharVar = 'Hello from P2354';
dsply theCharVar;
P209();
P573();
P2336();
return;