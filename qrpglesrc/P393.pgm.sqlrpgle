**free

ctl-opt dftactgrp(*no);

dcl-pi P393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P393';
dsply theCharVar;
P384();
P352();
P385();
return;