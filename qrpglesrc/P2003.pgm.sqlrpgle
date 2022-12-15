**free

ctl-opt dftactgrp(*no);

dcl-pi P2003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T777') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T777 LIMIT 1;

theCharVar = 'Hello from P2003';
dsply theCharVar;
callp localProc();
P794();
P818();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2003 in the procedure';
end-proc;