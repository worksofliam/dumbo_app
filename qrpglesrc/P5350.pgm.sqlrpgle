**free

ctl-opt dftactgrp(*no);

dcl-pi P5350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'
/copy 'qrpgleref/P1225.rpgleinc'

dcl-ds theTable extname('T299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T299 LIMIT 1;

theCharVar = 'Hello from P5350';
dsply theCharVar;
callp localProc();
P2439();
P1923();
P1225();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5350 in the procedure';
end-proc;