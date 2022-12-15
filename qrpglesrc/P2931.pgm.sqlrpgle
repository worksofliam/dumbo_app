**free

ctl-opt dftactgrp(*no);

dcl-pi P2931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P2884.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P2931';
dsply theCharVar;
callp localProc();
P543();
P101();
P2884();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2931 in the procedure';
end-proc;