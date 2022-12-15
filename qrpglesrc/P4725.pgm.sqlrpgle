**free

ctl-opt dftactgrp(*no);

dcl-pi P4725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P2445.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P4725';
dsply theCharVar;
callp localProc();
P487();
P573();
P2445();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4725 in the procedure';
end-proc;