**free

ctl-opt dftactgrp(*no);

dcl-pi P4324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds T1405 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1405 FROM T1405 LIMIT 1;

theCharVar = 'Hello from P4324';
dsply theCharVar;
callp localProc();
P1143();
P87();
P709();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4324 in the procedure';
end-proc;