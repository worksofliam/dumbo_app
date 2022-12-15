**free

ctl-opt dftactgrp(*no);

dcl-pi P2281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1945.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T743') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T743 LIMIT 1;

theCharVar = 'Hello from P2281';
dsply theCharVar;
callp localProc();
P1945();
P153();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2281 in the procedure';
end-proc;