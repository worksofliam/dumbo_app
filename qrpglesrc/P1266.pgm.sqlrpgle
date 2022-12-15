**free

ctl-opt dftactgrp(*no);

dcl-pi P1266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'

dcl-ds theTable extname('T1235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1235 LIMIT 1;

theCharVar = 'Hello from P1266';
dsply theCharVar;
P681();
P272();
P614();
return;