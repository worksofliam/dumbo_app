**free

ctl-opt dftactgrp(*no);

dcl-pi P4131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T133 FROM T133 LIMIT 1;

theCharVar = 'Hello from P4131';
dsply theCharVar;
callp localProc();
P592();
P1866();
P204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4131 in the procedure';
end-proc;