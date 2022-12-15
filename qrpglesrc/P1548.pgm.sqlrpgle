**free

ctl-opt dftactgrp(*no);

dcl-pi P1548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'

dcl-ds T1090 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1090 FROM T1090 LIMIT 1;

theCharVar = 'Hello from P1548';
dsply theCharVar;
callp localProc();
P556();
P30();
P1261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1548 in the procedure';
end-proc;