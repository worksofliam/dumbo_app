**free

ctl-opt dftactgrp(*no);

dcl-pi P4271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P3576.rpgleinc'
/copy 'qrpgleref/P1642.rpgleinc'

dcl-ds theTable extname('T1833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1833 LIMIT 1;

theCharVar = 'Hello from P4271';
dsply theCharVar;
callp localProc();
P2754();
P3576();
P1642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4271 in the procedure';
end-proc;