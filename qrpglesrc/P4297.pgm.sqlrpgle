**free

ctl-opt dftactgrp(*no);

dcl-pi P4297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2120.rpgleinc'
/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'

dcl-ds T1048 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1048 FROM T1048 LIMIT 1;

theCharVar = 'Hello from P4297';
dsply theCharVar;
callp localProc();
P2120();
P2440();
P2710();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4297 in the procedure';
end-proc;