**free

ctl-opt dftactgrp(*no);

dcl-pi P549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P549';
dsply theCharVar;
callp localProc();
P310();
P329();
P459();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P549 in the procedure';
end-proc;