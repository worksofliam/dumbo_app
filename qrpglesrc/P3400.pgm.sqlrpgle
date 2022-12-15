**free

ctl-opt dftactgrp(*no);

dcl-pi P3400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2844.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'
/copy 'qrpgleref/P2796.rpgleinc'

dcl-ds T1548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1548 FROM T1548 LIMIT 1;

theCharVar = 'Hello from P3400';
dsply theCharVar;
callp localProc();
P2844();
P1565();
P2796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3400 in the procedure';
end-proc;