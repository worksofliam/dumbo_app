**free

ctl-opt dftactgrp(*no);

dcl-pi P278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds T111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T111 FROM T111 LIMIT 1;

theCharVar = 'Hello from P278';
dsply theCharVar;
callp localProc();
P186();
P190();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P278 in the procedure';
end-proc;