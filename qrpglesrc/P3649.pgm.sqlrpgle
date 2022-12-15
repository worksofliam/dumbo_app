**free

ctl-opt dftactgrp(*no);

dcl-pi P3649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1417.rpgleinc'
/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P2663.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P3649';
dsply theCharVar;
callp localProc();
P1417();
P1166();
P2663();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3649 in the procedure';
end-proc;