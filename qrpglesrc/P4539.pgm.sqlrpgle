**free

ctl-opt dftactgrp(*no);

dcl-pi P4539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P1093.rpgleinc'
/copy 'qrpgleref/P4282.rpgleinc'

dcl-ds T554 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T554 FROM T554 LIMIT 1;

theCharVar = 'Hello from P4539';
dsply theCharVar;
callp localProc();
P1006();
P1093();
P4282();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4539 in the procedure';
end-proc;