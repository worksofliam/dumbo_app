**free

ctl-opt dftactgrp(*no);

dcl-pi P1411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P1147.rpgleinc'

dcl-ds theTable extname('T987') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T987 LIMIT 1;

theCharVar = 'Hello from P1411';
dsply theCharVar;
callp localProc();
P870();
P767();
P1147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1411 in the procedure';
end-proc;