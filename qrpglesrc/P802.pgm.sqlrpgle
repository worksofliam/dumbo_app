**free

ctl-opt dftactgrp(*no);

dcl-pi P802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'

dcl-ds theTable extname('T1388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1388 LIMIT 1;

theCharVar = 'Hello from P802';
dsply theCharVar;
callp localProc();
P704();
P544();
P494();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P802 in the procedure';
end-proc;