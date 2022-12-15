**free

ctl-opt dftactgrp(*no);

dcl-pi P4109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P3893.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds T870 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T870 FROM T870 LIMIT 1;

theCharVar = 'Hello from P4109';
dsply theCharVar;
callp localProc();
P340();
P3893();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4109 in the procedure';
end-proc;