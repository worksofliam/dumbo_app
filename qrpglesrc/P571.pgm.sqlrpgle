**free

ctl-opt dftactgrp(*no);

dcl-pi P571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T1680 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1680 FROM T1680 LIMIT 1;

theCharVar = 'Hello from P571';
dsply theCharVar;
callp localProc();
P3();
P323();
P56();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P571 in the procedure';
end-proc;