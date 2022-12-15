**free

ctl-opt dftactgrp(*no);

dcl-pi P108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P108';
dsply theCharVar;
callp localProc();
P20();
P102();
P36();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P108 in the procedure';
end-proc;