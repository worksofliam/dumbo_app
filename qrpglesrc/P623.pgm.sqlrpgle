**free

ctl-opt dftactgrp(*no);

dcl-pi P623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds T34 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T34 FROM T34 LIMIT 1;

theCharVar = 'Hello from P623';
dsply theCharVar;
callp localProc();
P136();
P77();
P459();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P623 in the procedure';
end-proc;