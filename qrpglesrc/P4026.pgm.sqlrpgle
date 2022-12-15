**free

ctl-opt dftactgrp(*no);

dcl-pi P4026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3132.rpgleinc'
/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T885') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T885 LIMIT 1;

theCharVar = 'Hello from P4026';
dsply theCharVar;
P3132();
P2440();
P49();
return;