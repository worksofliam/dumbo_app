**free

ctl-opt dftactgrp(*no);

dcl-pi P4187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P3216.rpgleinc'

dcl-ds theTable extname('T1562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1562 LIMIT 1;

theCharVar = 'Hello from P4187';
dsply theCharVar;
P1641();
P210();
P3216();
return;