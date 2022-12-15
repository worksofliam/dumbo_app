**free

ctl-opt dftactgrp(*no);

dcl-pi P3704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3250.rpgleinc'
/copy 'qrpgleref/P2178.rpgleinc'
/copy 'qrpgleref/P2338.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3704';
dsply theCharVar;
callp localProc();
P3250();
P2178();
P2338();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3704 in the procedure';
end-proc;