**free

ctl-opt dftactgrp(*no);

dcl-pi P1444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'

dcl-ds T36 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T36 FROM T36 LIMIT 1;

theCharVar = 'Hello from P1444';
dsply theCharVar;
callp localProc();
P600();
P872();
P718();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1444 in the procedure';
end-proc;