**free

ctl-opt dftactgrp(*no);

dcl-pi P1351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P1351';
dsply theCharVar;
P797();
P1096();
P387();
return;