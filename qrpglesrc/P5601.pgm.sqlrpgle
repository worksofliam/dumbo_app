**free

ctl-opt dftactgrp(*no);

dcl-pi P5601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P2227.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'

dcl-ds theTable extname('T519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T519 LIMIT 1;

theCharVar = 'Hello from P5601';
dsply theCharVar;
callp localProc();
P1630();
P2227();
P1212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5601 in the procedure';
end-proc;