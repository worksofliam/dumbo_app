**free

ctl-opt dftactgrp(*no);

dcl-pi P4932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3397.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P1687.rpgleinc'

dcl-ds T1328 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1328 FROM T1328 LIMIT 1;

theCharVar = 'Hello from P4932';
dsply theCharVar;
callp localProc();
P3397();
P745();
P1687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4932 in the procedure';
end-proc;