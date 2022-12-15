**free

ctl-opt dftactgrp(*no);

dcl-pi P3510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds theTable extname('T330') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T330 LIMIT 1;

theCharVar = 'Hello from P3510';
dsply theCharVar;
callp localProc();
P298();
P661();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3510 in the procedure';
end-proc;