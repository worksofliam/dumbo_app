**free

ctl-opt dftactgrp(*no);

dcl-pi P81;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T1340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1340 LIMIT 1;

theCharVar = 'Hello from P81';
dsply theCharVar;
P36();
P43();
return;