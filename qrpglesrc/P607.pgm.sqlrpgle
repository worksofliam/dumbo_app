**free

ctl-opt dftactgrp(*no);

dcl-pi P607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P607';
dsply theCharVar;
P159();
P271();
P385();
return;