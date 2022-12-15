**free

ctl-opt dftactgrp(*no);

dcl-pi P375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P375';
dsply theCharVar;
callp localProc();
P156();
P317();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P375 in the procedure';
end-proc;