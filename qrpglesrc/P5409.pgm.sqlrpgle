**free

ctl-opt dftactgrp(*no);

dcl-pi P5409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3750.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'
/copy 'qrpgleref/P4363.rpgleinc'

dcl-ds theTable extname('T1288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1288 LIMIT 1;

theCharVar = 'Hello from P5409';
dsply theCharVar;
P3750();
P1975();
P4363();
return;