**free

ctl-opt dftactgrp(*no);

dcl-pi P4282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2760.rpgleinc'
/copy 'qrpgleref/P3004.rpgleinc'
/copy 'qrpgleref/P2594.rpgleinc'

dcl-ds theTable extname('T340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T340 LIMIT 1;

theCharVar = 'Hello from P4282';
dsply theCharVar;
P2760();
P3004();
P2594();
return;