**free

ctl-opt dftactgrp(*no);

dcl-pi P560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P560';
dsply theCharVar;
callp localProc();
P53();
P133();
P412();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P560 in the procedure';
end-proc;