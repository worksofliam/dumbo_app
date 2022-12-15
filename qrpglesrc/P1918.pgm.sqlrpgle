**free

ctl-opt dftactgrp(*no);

dcl-pi P1918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P1463.rpgleinc'
/copy 'qrpgleref/P1906.rpgleinc'

dcl-ds theTable extname('T1813') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1813 LIMIT 1;

theCharVar = 'Hello from P1918';
dsply theCharVar;
P300();
P1463();
P1906();
return;