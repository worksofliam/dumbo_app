**free

ctl-opt dftactgrp(*no);

dcl-pi P4541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3332.rpgleinc'
/copy 'qrpgleref/P4212.rpgleinc'
/copy 'qrpgleref/P4402.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P4541';
dsply theCharVar;
P3332();
P4212();
P4402();
return;