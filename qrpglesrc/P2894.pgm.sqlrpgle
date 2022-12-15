**free

ctl-opt dftactgrp(*no);

dcl-pi P2894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1386.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P2673.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P2894';
dsply theCharVar;
callp localProc();
P1386();
P1614();
P2673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2894 in the procedure';
end-proc;