**free

ctl-opt dftactgrp(*no);

dcl-pi P4095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2230.rpgleinc'
/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P1658.rpgleinc'

dcl-ds theTable extname('T1749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1749 LIMIT 1;

theCharVar = 'Hello from P4095';
dsply theCharVar;
P2230();
P1605();
P1658();
return;