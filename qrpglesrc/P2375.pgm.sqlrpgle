**free

ctl-opt dftactgrp(*no);

dcl-pi P2375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'

dcl-ds theTable extname('T1004') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1004 LIMIT 1;

theCharVar = 'Hello from P2375';
dsply theCharVar;
callp localProc();
P1590();
P818();
P735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2375 in the procedure';
end-proc;