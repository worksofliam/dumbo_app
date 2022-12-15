**free

ctl-opt dftactgrp(*no);

dcl-pi P782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P782';
dsply theCharVar;
callp localProc();
P678();
P598();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P782 in the procedure';
end-proc;