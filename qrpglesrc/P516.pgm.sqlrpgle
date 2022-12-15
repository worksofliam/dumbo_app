**free

ctl-opt dftactgrp(*no);

dcl-pi P516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds T1388 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1388 FROM T1388 LIMIT 1;

theCharVar = 'Hello from P516';
dsply theCharVar;
callp localProc();
P457();
P47();
P153();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P516 in the procedure';
end-proc;