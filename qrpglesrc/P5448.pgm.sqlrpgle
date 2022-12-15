**free

ctl-opt dftactgrp(*no);

dcl-pi P5448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P2501.rpgleinc'
/copy 'qrpgleref/P751.rpgleinc'

dcl-ds theTable extname('T175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T175 LIMIT 1;

theCharVar = 'Hello from P5448';
dsply theCharVar;
callp localProc();
P870();
P2501();
P751();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5448 in the procedure';
end-proc;