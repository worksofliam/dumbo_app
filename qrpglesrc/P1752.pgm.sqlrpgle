**free

ctl-opt dftactgrp(*no);

dcl-pi P1752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'

dcl-ds theTable extname('T1699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1699 LIMIT 1;

theCharVar = 'Hello from P1752';
dsply theCharVar;
callp localProc();
P247();
P1472();
P741();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1752 in the procedure';
end-proc;