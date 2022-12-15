**free

ctl-opt dftactgrp(*no);

dcl-pi P2104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T1816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1816 LIMIT 1;

theCharVar = 'Hello from P2104';
dsply theCharVar;
P8();
P1329();
P25();
return;