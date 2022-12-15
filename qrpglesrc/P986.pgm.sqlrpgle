**free

ctl-opt dftactgrp(*no);

dcl-pi P986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T589 FROM T589 LIMIT 1;

theCharVar = 'Hello from P986';
dsply theCharVar;
callp localProc();
P127();
P918();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P986 in the procedure';
end-proc;