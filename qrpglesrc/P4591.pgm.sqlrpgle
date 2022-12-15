**free

ctl-opt dftactgrp(*no);

dcl-pi P4591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2664.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P3732.rpgleinc'

dcl-ds theTable extname('T459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T459 LIMIT 1;

theCharVar = 'Hello from P4591';
dsply theCharVar;
callp localProc();
P2664();
P26();
P3732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4591 in the procedure';
end-proc;