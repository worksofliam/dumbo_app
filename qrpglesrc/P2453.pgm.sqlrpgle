**free

ctl-opt dftactgrp(*no);

dcl-pi P2453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1295.rpgleinc'
/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'

dcl-ds T1139 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1139 FROM T1139 LIMIT 1;

theCharVar = 'Hello from P2453';
dsply theCharVar;
callp localProc();
P1295();
P1530();
P805();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2453 in the procedure';
end-proc;