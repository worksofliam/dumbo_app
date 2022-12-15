**free

ctl-opt dftactgrp(*no);

dcl-pi P4564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2926.rpgleinc'
/copy 'qrpgleref/P3110.rpgleinc'
/copy 'qrpgleref/P4241.rpgleinc'

dcl-ds theTable extname('T1078') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1078 LIMIT 1;

theCharVar = 'Hello from P4564';
dsply theCharVar;
P2926();
P3110();
P4241();
return;