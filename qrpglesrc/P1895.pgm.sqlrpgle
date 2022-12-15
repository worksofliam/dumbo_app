**free

ctl-opt dftactgrp(*no);

dcl-pi P1895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'

dcl-ds theTable extname('T1572') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1572 LIMIT 1;

theCharVar = 'Hello from P1895';
dsply theCharVar;
P952();
P963();
P867();
return;