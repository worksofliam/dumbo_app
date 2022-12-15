**free

ctl-opt dftactgrp(*no);

dcl-pi P253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P253';
dsply theCharVar;
P164();
P93();
P91();
return;