**free

ctl-opt dftactgrp(*no);

dcl-pi P1040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P1040';
dsply theCharVar;
P201();
P491();
P772();
return;