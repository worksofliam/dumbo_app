**free

ctl-opt dftactgrp(*no);

dcl-pi P1655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'
/copy 'qrpgleref/P1345.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P1655';
dsply theCharVar;
P816();
P1471();
P1345();
return;