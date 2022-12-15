**free

ctl-opt dftactgrp(*no);

dcl-pi P3232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P2817.rpgleinc'

dcl-ds theTable extname('T1174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1174 LIMIT 1;

theCharVar = 'Hello from P3232';
dsply theCharVar;
P1783();
P1715();
P2817();
return;