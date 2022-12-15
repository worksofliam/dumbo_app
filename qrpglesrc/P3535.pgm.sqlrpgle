**free

ctl-opt dftactgrp(*no);

dcl-pi P3535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2531.rpgleinc'
/copy 'qrpgleref/P1804.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds T1096 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1096 FROM T1096 LIMIT 1;

theCharVar = 'Hello from P3535';
dsply theCharVar;
callp localProc();
P2531();
P1804();
P1833();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3535 in the procedure';
end-proc;