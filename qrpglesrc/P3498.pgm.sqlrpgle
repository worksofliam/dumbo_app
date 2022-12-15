**free

ctl-opt dftactgrp(*no);

dcl-pi P3498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P2907.rpgleinc'

dcl-ds T1579 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1579 FROM T1579 LIMIT 1;

theCharVar = 'Hello from P3498';
dsply theCharVar;
callp localProc();
P630();
P2035();
P2907();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3498 in the procedure';
end-proc;