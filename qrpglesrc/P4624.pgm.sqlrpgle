**free

ctl-opt dftactgrp(*no);

dcl-pi P4624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2888.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P2530.rpgleinc'

dcl-ds theTable extname('T1071') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1071 LIMIT 1;

theCharVar = 'Hello from P4624';
dsply theCharVar;
P2888();
P230();
P2530();
return;