**free

ctl-opt dftactgrp(*no);

dcl-pi P4256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3769.rpgleinc'
/copy 'qrpgleref/P2657.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'

dcl-ds T1518 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1518 FROM T1518 LIMIT 1;

theCharVar = 'Hello from P4256';
dsply theCharVar;
callp localProc();
P3769();
P2657();
P1220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4256 in the procedure';
end-proc;