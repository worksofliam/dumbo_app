**free

ctl-opt dftactgrp(*no);

dcl-pi P3121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P1831.rpgleinc'

dcl-ds T118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T118 FROM T118 LIMIT 1;

theCharVar = 'Hello from P3121';
dsply theCharVar;
callp localProc();
P1472();
P704();
P1831();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3121 in the procedure';
end-proc;