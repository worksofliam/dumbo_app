**free

ctl-opt dftactgrp(*no);

dcl-pi P5506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2436.rpgleinc'
/copy 'qrpgleref/P2165.rpgleinc'
/copy 'qrpgleref/P2039.rpgleinc'

dcl-ds theTable extname('T1045') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1045 LIMIT 1;

theCharVar = 'Hello from P5506';
dsply theCharVar;
callp localProc();
P2436();
P2165();
P2039();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5506 in the procedure';
end-proc;