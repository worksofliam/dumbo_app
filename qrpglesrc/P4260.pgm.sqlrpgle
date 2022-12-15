**free

ctl-opt dftactgrp(*no);

dcl-pi P4260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3374.rpgleinc'
/copy 'qrpgleref/P3004.rpgleinc'
/copy 'qrpgleref/P3332.rpgleinc'

dcl-ds T0 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T0 FROM T0 LIMIT 1;

theCharVar = 'Hello from P4260';
dsply theCharVar;
callp localProc();
P3374();
P3004();
P3332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4260 in the procedure';
end-proc;