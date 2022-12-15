**free

ctl-opt dftactgrp(*no);

dcl-pi P2515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P1888.rpgleinc'
/copy 'qrpgleref/P754.rpgleinc'

dcl-ds theTable extname('T679') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T679 LIMIT 1;

theCharVar = 'Hello from P2515';
dsply theCharVar;
callp localProc();
P746();
P1888();
P754();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2515 in the procedure';
end-proc;