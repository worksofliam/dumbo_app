**free

ctl-opt dftactgrp(*no);

dcl-pi P296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T118 FROM T118 LIMIT 1;

theCharVar = 'Hello from P296';
dsply theCharVar;
callp localProc();
P244();
P3();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P296 in the procedure';
end-proc;