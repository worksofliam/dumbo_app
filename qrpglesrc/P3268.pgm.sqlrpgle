**free

ctl-opt dftactgrp(*no);

dcl-pi P3268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P2486.rpgleinc'
/copy 'qrpgleref/P2555.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P3268';
dsply theCharVar;
callp localProc();
P1070();
P2486();
P2555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3268 in the procedure';
end-proc;