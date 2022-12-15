**free

ctl-opt dftactgrp(*no);

dcl-pi P310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds T322 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T322 FROM T322 LIMIT 1;

theCharVar = 'Hello from P310';
dsply theCharVar;
callp localProc();
P1();
P233();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P310 in the procedure';
end-proc;