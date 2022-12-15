**free

ctl-opt dftactgrp(*no);

dcl-pi P4175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3441.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P4175';
dsply theCharVar;
callp localProc();
P3441();
P393();
P485();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4175 in the procedure';
end-proc;