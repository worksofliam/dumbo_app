**free

ctl-opt dftactgrp(*no);

dcl-pi P321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P321';
dsply theCharVar;
callp localProc();
P172();
P141();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P321 in the procedure';
end-proc;