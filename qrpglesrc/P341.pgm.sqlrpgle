**free

ctl-opt dftactgrp(*no);

dcl-pi P341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P341';
dsply theCharVar;
callp localProc();
P177();
P102();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P341 in the procedure';
end-proc;