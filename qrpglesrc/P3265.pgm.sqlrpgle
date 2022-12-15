**free

ctl-opt dftactgrp(*no);

dcl-pi P3265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3027.rpgleinc'
/copy 'qrpgleref/P2673.rpgleinc'
/copy 'qrpgleref/P2832.rpgleinc'

dcl-ds theTable extname('T1687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1687 LIMIT 1;

theCharVar = 'Hello from P3265';
dsply theCharVar;
callp localProc();
P3027();
P2673();
P2832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3265 in the procedure';
end-proc;