**free

ctl-opt dftactgrp(*no);

dcl-pi P3116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T32') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T32 LIMIT 1;

theCharVar = 'Hello from P3116';
dsply theCharVar;
P100();
P894();
P8();
return;