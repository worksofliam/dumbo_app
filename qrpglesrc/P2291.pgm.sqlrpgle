**free

ctl-opt dftactgrp(*no);

dcl-pi P2291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1319.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'

dcl-ds theTable extname('T1874') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1874 LIMIT 1;

theCharVar = 'Hello from P2291';
dsply theCharVar;
callp localProc();
P1319();
P1244();
P1121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2291 in the procedure';
end-proc;