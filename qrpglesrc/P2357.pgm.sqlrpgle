**free

ctl-opt dftactgrp(*no);

dcl-pi P2357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P1646.rpgleinc'

dcl-ds theTable extname('T459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T459 LIMIT 1;

theCharVar = 'Hello from P2357';
dsply theCharVar;
callp localProc();
P862();
P1104();
P1646();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2357 in the procedure';
end-proc;