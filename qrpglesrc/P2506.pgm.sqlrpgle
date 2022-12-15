**free

ctl-opt dftactgrp(*no);

dcl-pi P2506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P1266.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'

dcl-ds theTable extname('T576') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T576 LIMIT 1;

theCharVar = 'Hello from P2506';
dsply theCharVar;
callp localProc();
P2033();
P1266();
P1064();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2506 in the procedure';
end-proc;