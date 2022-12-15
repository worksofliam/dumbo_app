**free

ctl-opt dftactgrp(*no);

dcl-pi P353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P353';
dsply theCharVar;
callp localProc();
P107();
P1();
P290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P353 in the procedure';
end-proc;