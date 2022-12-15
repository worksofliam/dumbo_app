**free

ctl-opt dftactgrp(*no);

dcl-pi P5045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3014.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P2289.rpgleinc'

dcl-ds theTable extname('T1755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1755 LIMIT 1;

theCharVar = 'Hello from P5045';
dsply theCharVar;
callp localProc();
P3014();
P468();
P2289();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5045 in the procedure';
end-proc;