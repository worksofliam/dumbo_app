**free

ctl-opt dftactgrp(*no);

dcl-pi P572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T1618') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1618 LIMIT 1;

theCharVar = 'Hello from P572';
dsply theCharVar;
P460();
P184();
P500();
return;