**free

ctl-opt dftactgrp(*no);

dcl-pi P4666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1975.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P4184.rpgleinc'

dcl-ds theTable extname('T1778') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1778 LIMIT 1;

theCharVar = 'Hello from P4666';
dsply theCharVar;
callp localProc();
P1975();
P771();
P4184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4666 in the procedure';
end-proc;