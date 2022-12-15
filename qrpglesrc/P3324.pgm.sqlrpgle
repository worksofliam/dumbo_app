**free

ctl-opt dftactgrp(*no);

dcl-pi P3324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P2585.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds theTable extname('T735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T735 LIMIT 1;

theCharVar = 'Hello from P3324';
dsply theCharVar;
callp localProc();
P347();
P2585();
P1675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3324 in the procedure';
end-proc;