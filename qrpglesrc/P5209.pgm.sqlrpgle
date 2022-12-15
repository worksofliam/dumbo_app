**free

ctl-opt dftactgrp(*no);

dcl-pi P5209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P4997.rpgleinc'
/copy 'qrpgleref/P4881.rpgleinc'

dcl-ds theTable extname('T1346') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1346 LIMIT 1;

theCharVar = 'Hello from P5209';
dsply theCharVar;
P410();
P4997();
P4881();
return;