**free

ctl-opt dftactgrp(*no);

dcl-pi P3206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2314.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'

dcl-ds theTable extname('T1811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1811 LIMIT 1;

theCharVar = 'Hello from P3206';
dsply theCharVar;
callp localProc();
P2314();
P637();
P750();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3206 in the procedure';
end-proc;