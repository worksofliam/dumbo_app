**free

ctl-opt dftactgrp(*no);

dcl-pi P4237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4163.rpgleinc'
/copy 'qrpgleref/P3689.rpgleinc'
/copy 'qrpgleref/P2196.rpgleinc'

dcl-ds T552 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T552 FROM T552 LIMIT 1;

theCharVar = 'Hello from P4237';
dsply theCharVar;
callp localProc();
P4163();
P3689();
P2196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4237 in the procedure';
end-proc;