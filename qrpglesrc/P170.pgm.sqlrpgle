**free

ctl-opt dftactgrp(*no);

dcl-pi P170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P170';
dsply theCharVar;
P4();
P117();
P44();
return;