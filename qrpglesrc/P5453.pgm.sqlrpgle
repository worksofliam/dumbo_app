**free

ctl-opt dftactgrp(*no);

dcl-pi P5453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4748.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'

dcl-ds theTable extname('T305') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T305 LIMIT 1;

theCharVar = 'Hello from P5453';
dsply theCharVar;
callp localProc();
P4748();
P382();
P1058();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5453 in the procedure';
end-proc;