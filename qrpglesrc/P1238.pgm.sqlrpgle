**free

ctl-opt dftactgrp(*no);

dcl-pi P1238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'

dcl-ds T1629 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1629 FROM T1629 LIMIT 1;

theCharVar = 'Hello from P1238';
dsply theCharVar;
callp localProc();
P1086();
P1216();
P991();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1238 in the procedure';
end-proc;