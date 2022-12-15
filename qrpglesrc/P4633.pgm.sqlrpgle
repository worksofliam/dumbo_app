**free

ctl-opt dftactgrp(*no);

dcl-pi P4633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P2728.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'

dcl-ds T1620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1620 FROM T1620 LIMIT 1;

theCharVar = 'Hello from P4633';
dsply theCharVar;
callp localProc();
P588();
P2728();
P1052();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4633 in the procedure';
end-proc;