**free

ctl-opt dftactgrp(*no);

dcl-pi P2832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2515.rpgleinc'
/copy 'qrpgleref/P2404.rpgleinc'
/copy 'qrpgleref/P2202.rpgleinc'

dcl-ds theTable extname('T545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T545 LIMIT 1;

theCharVar = 'Hello from P2832';
dsply theCharVar;
callp localProc();
P2515();
P2404();
P2202();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2832 in the procedure';
end-proc;