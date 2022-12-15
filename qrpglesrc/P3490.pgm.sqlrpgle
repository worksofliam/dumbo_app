**free

ctl-opt dftactgrp(*no);

dcl-pi P3490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P1247.rpgleinc'
/copy 'qrpgleref/P2846.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P3490';
dsply theCharVar;
callp localProc();
P302();
P1247();
P2846();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3490 in the procedure';
end-proc;