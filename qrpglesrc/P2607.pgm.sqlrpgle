**free

ctl-opt dftactgrp(*no);

dcl-pi P2607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2498.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds theTable extname('T351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T351 LIMIT 1;

theCharVar = 'Hello from P2607';
dsply theCharVar;
callp localProc();
P2498();
P465();
P622();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2607 in the procedure';
end-proc;