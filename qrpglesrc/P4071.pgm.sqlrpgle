**free

ctl-opt dftactgrp(*no);

dcl-pi P4071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3805.rpgleinc'
/copy 'qrpgleref/P2714.rpgleinc'
/copy 'qrpgleref/P2925.rpgleinc'

dcl-ds T1463 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1463 FROM T1463 LIMIT 1;

theCharVar = 'Hello from P4071';
dsply theCharVar;
callp localProc();
P3805();
P2714();
P2925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4071 in the procedure';
end-proc;