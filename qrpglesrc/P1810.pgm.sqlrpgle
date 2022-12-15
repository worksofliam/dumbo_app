**free

ctl-opt dftactgrp(*no);

dcl-pi P1810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'

dcl-ds theTable extname('T1027') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1027 LIMIT 1;

theCharVar = 'Hello from P1810';
dsply theCharVar;
callp localProc();
P1740();
P464();
P734();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1810 in the procedure';
end-proc;