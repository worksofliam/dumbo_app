**free

ctl-opt dftactgrp(*no);

dcl-pi P2782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P1827.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P2782';
dsply theCharVar;
callp localProc();
P1606();
P793();
P1827();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2782 in the procedure';
end-proc;