**free

ctl-opt dftactgrp(*no);

dcl-pi P2359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P2319.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T1669') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1669 LIMIT 1;

theCharVar = 'Hello from P2359';
dsply theCharVar;
callp localProc();
P324();
P2319();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2359 in the procedure';
end-proc;