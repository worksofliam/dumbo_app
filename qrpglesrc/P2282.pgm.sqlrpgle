**free

ctl-opt dftactgrp(*no);

dcl-pi P2282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P1485.rpgleinc'
/copy 'qrpgleref/P1415.rpgleinc'

dcl-ds T0 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T0 FROM T0 LIMIT 1;

theCharVar = 'Hello from P2282';
dsply theCharVar;
callp localProc();
P936();
P1485();
P1415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2282 in the procedure';
end-proc;