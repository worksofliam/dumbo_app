**free

ctl-opt dftactgrp(*no);

dcl-pi P4775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2888.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P3544.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P4775';
dsply theCharVar;
callp localProc();
P2888();
P300();
P3544();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4775 in the procedure';
end-proc;