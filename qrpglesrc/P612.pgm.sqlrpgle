**free

ctl-opt dftactgrp(*no);

dcl-pi P612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds T450 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T450 FROM T450 LIMIT 1;

theCharVar = 'Hello from P612';
dsply theCharVar;
callp localProc();
P362();
P511();
P459();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P612 in the procedure';
end-proc;