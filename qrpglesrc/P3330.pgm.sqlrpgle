**free

ctl-opt dftactgrp(*no);

dcl-pi P3330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P2700.rpgleinc'
/copy 'qrpgleref/P2868.rpgleinc'

dcl-ds theTable extname('T1392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1392 LIMIT 1;

theCharVar = 'Hello from P3330';
dsply theCharVar;
callp localProc();
P942();
P2700();
P2868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3330 in the procedure';
end-proc;