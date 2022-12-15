**free

ctl-opt dftactgrp(*no);

dcl-pi P4194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P2539.rpgleinc'
/copy 'qrpgleref/P2585.rpgleinc'

dcl-ds theTable extname('T504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T504 LIMIT 1;

theCharVar = 'Hello from P4194';
dsply theCharVar;
callp localProc();
P907();
P2539();
P2585();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4194 in the procedure';
end-proc;