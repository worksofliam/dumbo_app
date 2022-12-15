**free

ctl-opt dftactgrp(*no);

dcl-pi P1774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1278.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P1774';
dsply theCharVar;
callp localProc();
P1278();
P1614();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1774 in the procedure';
end-proc;