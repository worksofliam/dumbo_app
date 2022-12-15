**free

ctl-opt dftactgrp(*no);

dcl-pi P3480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2389.rpgleinc'
/copy 'qrpgleref/P2705.rpgleinc'
/copy 'qrpgleref/P1838.rpgleinc'

dcl-ds T1133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1133 FROM T1133 LIMIT 1;

theCharVar = 'Hello from P3480';
dsply theCharVar;
callp localProc();
P2389();
P2705();
P1838();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3480 in the procedure';
end-proc;