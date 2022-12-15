**free

ctl-opt dftactgrp(*no);

dcl-pi P3528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1160.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P2401.rpgleinc'

dcl-ds T480 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T480 FROM T480 LIMIT 1;

theCharVar = 'Hello from P3528';
dsply theCharVar;
callp localProc();
P1160();
P465();
P2401();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3528 in the procedure';
end-proc;