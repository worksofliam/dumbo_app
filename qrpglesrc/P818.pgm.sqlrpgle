**free

ctl-opt dftactgrp(*no);

dcl-pi P818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P818';
dsply theCharVar;
callp localProc();
P270();
P195();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P818 in the procedure';
end-proc;