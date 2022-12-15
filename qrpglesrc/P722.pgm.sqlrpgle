**free

ctl-opt dftactgrp(*no);

dcl-pi P722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'

dcl-ds theTable extname('T90') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T90 LIMIT 1;

theCharVar = 'Hello from P722';
dsply theCharVar;
P184();
P525();
P657();
return;