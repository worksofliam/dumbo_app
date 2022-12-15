**free

ctl-opt dftactgrp(*no);

dcl-pi P5429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4954.rpgleinc'
/copy 'qrpgleref/P4661.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P5429';
dsply theCharVar;
P4954();
P4661();
P885();
return;