**free

ctl-opt dftactgrp(*no);

dcl-pi P1356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P813.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds T1219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1219 FROM T1219 LIMIT 1;

theCharVar = 'Hello from P1356';
dsply theCharVar;
callp localProc();
P813();
P534();
P398();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1356 in the procedure';
end-proc;