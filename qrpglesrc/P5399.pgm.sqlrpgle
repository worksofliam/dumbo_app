**free

ctl-opt dftactgrp(*no);

dcl-pi P5399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P1394.rpgleinc'

dcl-ds theTable extname('T1290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1290 LIMIT 1;

theCharVar = 'Hello from P5399';
dsply theCharVar;
callp localProc();
P177();
P16();
P1394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5399 in the procedure';
end-proc;