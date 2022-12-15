**free

ctl-opt dftactgrp(*no);

dcl-pi P5050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3653.rpgleinc'
/copy 'qrpgleref/P4712.rpgleinc'
/copy 'qrpgleref/P4020.rpgleinc'

dcl-ds T1486 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1486 FROM T1486 LIMIT 1;

theCharVar = 'Hello from P5050';
dsply theCharVar;
callp localProc();
P3653();
P4712();
P4020();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5050 in the procedure';
end-proc;