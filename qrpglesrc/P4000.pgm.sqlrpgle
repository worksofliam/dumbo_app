**free

ctl-opt dftactgrp(*no);

dcl-pi P4000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2297.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P4000';
dsply theCharVar;
P2297();
P879();
P2409();
return;