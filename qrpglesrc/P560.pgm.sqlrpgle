**free

ctl-opt dftactgrp(*no);

dcl-pi P560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T986') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T986 LIMIT 1;

theCharVar = 'Hello from P560';
dsply theCharVar;
callp localProc();
P109();
P382();
P394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P560 in the procedure';
end-proc;