**free

ctl-opt dftactgrp(*no);

dcl-pi P5331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P2164.rpgleinc'
/copy 'qrpgleref/P2281.rpgleinc'

dcl-ds T1144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1144 FROM T1144 LIMIT 1;

theCharVar = 'Hello from P5331';
dsply theCharVar;
callp localProc();
P1953();
P2164();
P2281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5331 in the procedure';
end-proc;