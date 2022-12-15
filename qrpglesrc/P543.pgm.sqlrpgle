**free

ctl-opt dftactgrp(*no);

dcl-pi P543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P543';
dsply theCharVar;
P253();
P485();
P120();
return;