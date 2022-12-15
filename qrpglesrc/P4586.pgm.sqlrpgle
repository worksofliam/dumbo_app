**free

ctl-opt dftactgrp(*no);

dcl-pi P4586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2892.rpgleinc'
/copy 'qrpgleref/P3653.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T1147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1147 LIMIT 1;

theCharVar = 'Hello from P4586';
dsply theCharVar;
P2892();
P3653();
P387();
return;