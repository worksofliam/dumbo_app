**free

ctl-opt dftactgrp(*no);

dcl-pi P870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P870';
dsply theCharVar;
P852();
P190();
P401();
return;