**free

ctl-opt dftactgrp(*no);

dcl-pi P3878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3711.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P2826.rpgleinc'

dcl-ds theTable extname('T1370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1370 LIMIT 1;

theCharVar = 'Hello from P3878';
dsply theCharVar;
callp localProc();
P3711();
P1010();
P2826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3878 in the procedure';
end-proc;