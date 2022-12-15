**free

ctl-opt dftactgrp(*no);

dcl-pi P3824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P3238.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'

dcl-ds theTable extname('T1161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1161 LIMIT 1;

theCharVar = 'Hello from P3824';
dsply theCharVar;
callp localProc();
P728();
P3238();
P2012();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3824 in the procedure';
end-proc;