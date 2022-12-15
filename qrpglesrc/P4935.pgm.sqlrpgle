**free

ctl-opt dftactgrp(*no);

dcl-pi P4935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4152.rpgleinc'
/copy 'qrpgleref/P4736.rpgleinc'
/copy 'qrpgleref/P3956.rpgleinc'

dcl-ds theTable extname('T1214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1214 LIMIT 1;

theCharVar = 'Hello from P4935';
dsply theCharVar;
callp localProc();
P4152();
P4736();
P3956();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4935 in the procedure';
end-proc;