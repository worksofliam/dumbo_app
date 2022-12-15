**free

ctl-opt dftactgrp(*no);

dcl-pi P1811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P1811';
dsply theCharVar;
callp localProc();
P378();
P426();
P553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1811 in the procedure';
end-proc;