**free

ctl-opt dftactgrp(*no);

dcl-pi P212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P212';
dsply theCharVar;
P150();
P149();
P12();
return;