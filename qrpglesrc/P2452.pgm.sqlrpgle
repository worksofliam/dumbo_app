**free

ctl-opt dftactgrp(*no);

dcl-pi P2452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P1625.rpgleinc'
/copy 'qrpgleref/P941.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P2452';
dsply theCharVar;
callp localProc();
P618();
P1625();
P941();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2452 in the procedure';
end-proc;