**free

ctl-opt dftactgrp(*no);

dcl-pi P662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P662';
dsply theCharVar;
callp localProc();
P518();
P339();
P48();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P662 in the procedure';
end-proc;