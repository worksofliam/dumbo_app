**free

ctl-opt dftactgrp(*no);

dcl-pi P3437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2328.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P2735.rpgleinc'

dcl-ds theTable extname('T1289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1289 LIMIT 1;

theCharVar = 'Hello from P3437';
dsply theCharVar;
callp localProc();
P2328();
P273();
P2735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3437 in the procedure';
end-proc;