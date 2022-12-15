**free

ctl-opt dftactgrp(*no);

dcl-pi P3983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3230.rpgleinc'
/copy 'qrpgleref/P1938.rpgleinc'
/copy 'qrpgleref/P3845.rpgleinc'

dcl-ds theTable extname('T1355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1355 LIMIT 1;

theCharVar = 'Hello from P3983';
dsply theCharVar;
P3230();
P1938();
P3845();
return;