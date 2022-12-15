**free

ctl-opt dftactgrp(*no);

dcl-pi P254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P254';
dsply theCharVar;
callp localProc();
P175();
P180();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P254 in the procedure';
end-proc;