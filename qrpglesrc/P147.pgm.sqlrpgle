**free

ctl-opt dftactgrp(*no);

dcl-pi P147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T1324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1324 LIMIT 1;

theCharVar = 'Hello from P147';
dsply theCharVar;
P112();
P106();
P76();
return;