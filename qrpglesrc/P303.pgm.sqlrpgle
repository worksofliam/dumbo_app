**free

ctl-opt dftactgrp(*no);

dcl-pi P303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T1674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1674 LIMIT 1;

theCharVar = 'Hello from P303';
dsply theCharVar;
P241();
P264();
P244();
return;