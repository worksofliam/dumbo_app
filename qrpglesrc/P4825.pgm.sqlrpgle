**free

ctl-opt dftactgrp(*no);

dcl-pi P4825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P4624.rpgleinc'
/copy 'qrpgleref/P4320.rpgleinc'

dcl-ds theTable extname('T1475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1475 LIMIT 1;

theCharVar = 'Hello from P4825';
dsply theCharVar;
callp localProc();
P36();
P4624();
P4320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4825 in the procedure';
end-proc;