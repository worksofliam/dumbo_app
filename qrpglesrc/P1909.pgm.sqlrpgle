**free

ctl-opt dftactgrp(*no);

dcl-pi P1909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds T1509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1509 FROM T1509 LIMIT 1;

theCharVar = 'Hello from P1909';
dsply theCharVar;
callp localProc();
P884();
P247();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1909 in the procedure';
end-proc;