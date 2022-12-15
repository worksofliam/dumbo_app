**free

ctl-opt dftactgrp(*no);

dcl-pi P4556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3639.rpgleinc'
/copy 'qrpgleref/P1965.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'

dcl-ds T112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T112 FROM T112 LIMIT 1;

theCharVar = 'Hello from P4556';
dsply theCharVar;
callp localProc();
P3639();
P1965();
P1263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4556 in the procedure';
end-proc;