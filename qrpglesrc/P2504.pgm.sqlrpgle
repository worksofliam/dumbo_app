**free

ctl-opt dftactgrp(*no);

dcl-pi P2504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1567.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T1313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1313 LIMIT 1;

theCharVar = 'Hello from P2504';
dsply theCharVar;
P1567();
P2453();
P573();
return;