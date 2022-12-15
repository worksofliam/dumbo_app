**free

ctl-opt dftactgrp(*no);

dcl-pi P2429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P871.rpgleinc'

dcl-ds theTable extname('T1537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1537 LIMIT 1;

theCharVar = 'Hello from P2429';
dsply theCharVar;
callp localProc();
P416();
P1116();
P871();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2429 in the procedure';
end-proc;