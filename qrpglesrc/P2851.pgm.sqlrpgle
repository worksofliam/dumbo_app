**free

ctl-opt dftactgrp(*no);

dcl-pi P2851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1963.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'

dcl-ds theTable extname('T431') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T431 LIMIT 1;

theCharVar = 'Hello from P2851';
dsply theCharVar;
callp localProc();
P1963();
P1058();
P1118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2851 in the procedure';
end-proc;