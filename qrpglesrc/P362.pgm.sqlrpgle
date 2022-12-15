**free

ctl-opt dftactgrp(*no);

dcl-pi P362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T1071') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1071 LIMIT 1;

theCharVar = 'Hello from P362';
dsply theCharVar;
callp localProc();
P210();
P80();
P320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P362 in the procedure';
end-proc;