**free

ctl-opt dftactgrp(*no);

dcl-pi P4865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P3404.rpgleinc'

dcl-ds theTable extname('T1120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1120 LIMIT 1;

theCharVar = 'Hello from P4865';
dsply theCharVar;
callp localProc();
P10();
P1502();
P3404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4865 in the procedure';
end-proc;