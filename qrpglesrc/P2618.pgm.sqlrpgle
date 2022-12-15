**free

ctl-opt dftactgrp(*no);

dcl-pi P2618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2161.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds theTable extname('T1670') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1670 LIMIT 1;

theCharVar = 'Hello from P2618';
dsply theCharVar;
callp localProc();
P2161();
P733();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2618 in the procedure';
end-proc;