**free

ctl-opt dftactgrp(*no);

dcl-pi P2176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P2006.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'

dcl-ds theTable extname('T363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T363 LIMIT 1;

theCharVar = 'Hello from P2176';
dsply theCharVar;
callp localProc();
P604();
P2006();
P1111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2176 in the procedure';
end-proc;