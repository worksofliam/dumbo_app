**free

ctl-opt dftactgrp(*no);

dcl-pi P4610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P4149.rpgleinc'
/copy 'qrpgleref/P2687.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P4610';
dsply theCharVar;
callp localProc();
P1486();
P4149();
P2687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4610 in the procedure';
end-proc;