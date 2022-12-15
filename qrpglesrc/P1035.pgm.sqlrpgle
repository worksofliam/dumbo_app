**free

ctl-opt dftactgrp(*no);

dcl-pi P1035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P1035';
dsply theCharVar;
callp localProc();
P862();
P628();
P204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1035 in the procedure';
end-proc;