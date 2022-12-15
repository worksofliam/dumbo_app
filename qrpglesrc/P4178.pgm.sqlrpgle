**free

ctl-opt dftactgrp(*no);

dcl-pi P4178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1761.rpgleinc'
/copy 'qrpgleref/P2701.rpgleinc'
/copy 'qrpgleref/P3864.rpgleinc'

dcl-ds theTable extname('T1511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1511 LIMIT 1;

theCharVar = 'Hello from P4178';
dsply theCharVar;
callp localProc();
P1761();
P2701();
P3864();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4178 in the procedure';
end-proc;