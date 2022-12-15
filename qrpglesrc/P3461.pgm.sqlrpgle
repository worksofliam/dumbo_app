**free

ctl-opt dftactgrp(*no);

dcl-pi P3461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P3354.rpgleinc'
/copy 'qrpgleref/P2910.rpgleinc'

dcl-ds theTable extname('T1240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1240 LIMIT 1;

theCharVar = 'Hello from P3461';
dsply theCharVar;
callp localProc();
P89();
P3354();
P2910();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3461 in the procedure';
end-proc;