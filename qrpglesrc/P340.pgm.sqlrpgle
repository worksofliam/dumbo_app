**free

ctl-opt dftactgrp(*no);

dcl-pi P340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T1040') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1040 LIMIT 1;

theCharVar = 'Hello from P340';
dsply theCharVar;
P82();
P4();
P44();
return;