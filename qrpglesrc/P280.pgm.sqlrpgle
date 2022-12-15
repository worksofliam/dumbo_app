**free

ctl-opt dftactgrp(*no);

dcl-pi P280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T1548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1548 FROM T1548 LIMIT 1;

theCharVar = 'Hello from P280';
dsply theCharVar;
callp localProc();
P76();
P196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P280 in the procedure';
end-proc;