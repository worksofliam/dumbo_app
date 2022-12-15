**free

ctl-opt dftactgrp(*no);

dcl-pi P132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P132';
dsply theCharVar;
P25();
P125();
P79();
return;