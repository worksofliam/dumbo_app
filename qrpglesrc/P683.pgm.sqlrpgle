**free

ctl-opt dftactgrp(*no);

dcl-pi P683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P683';
dsply theCharVar;
callp localProc();
P172();
P382();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P683 in the procedure';
end-proc;