**free

ctl-opt dftactgrp(*no);

dcl-pi P3724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2070.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P3724';
dsply theCharVar;
callp localProc();
P2070();
P1079();
P966();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3724 in the procedure';
end-proc;