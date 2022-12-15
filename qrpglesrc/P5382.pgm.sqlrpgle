**free

ctl-opt dftactgrp(*no);

dcl-pi P5382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3346.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P2726.rpgleinc'

dcl-ds theTable extname('T1097') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1097 LIMIT 1;

theCharVar = 'Hello from P5382';
dsply theCharVar;
callp localProc();
P3346();
P957();
P2726();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5382 in the procedure';
end-proc;