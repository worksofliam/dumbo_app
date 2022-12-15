**free

ctl-opt dftactgrp(*no);

dcl-pi P1757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T1714') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1714 LIMIT 1;

theCharVar = 'Hello from P1757';
dsply theCharVar;
callp localProc();
P631();
P1401();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1757 in the procedure';
end-proc;