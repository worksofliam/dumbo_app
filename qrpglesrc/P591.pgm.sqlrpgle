**free

ctl-opt dftactgrp(*no);

dcl-pi P591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds theTable extname('T1254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1254 LIMIT 1;

theCharVar = 'Hello from P591';
dsply theCharVar;
callp localProc();
P61();
P392();
P481();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P591 in the procedure';
end-proc;