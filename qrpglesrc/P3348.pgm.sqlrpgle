**free

ctl-opt dftactgrp(*no);

dcl-pi P3348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P3304.rpgleinc'
/copy 'qrpgleref/P1922.rpgleinc'

dcl-ds theTable extname('T1574') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1574 LIMIT 1;

theCharVar = 'Hello from P3348';
dsply theCharVar;
P1865();
P3304();
P1922();
return;