**free

ctl-opt dftactgrp(*no);

dcl-pi P3603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P1526.rpgleinc'
/copy 'qrpgleref/P2525.rpgleinc'

dcl-ds T624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T624 FROM T624 LIMIT 1;

theCharVar = 'Hello from P3603';
dsply theCharVar;
callp localProc();
P573();
P1526();
P2525();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3603 in the procedure';
end-proc;