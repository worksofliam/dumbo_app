**free

ctl-opt dftactgrp(*no);

dcl-pi P2157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1977.rpgleinc'
/copy 'qrpgleref/P1989.rpgleinc'
/copy 'qrpgleref/P1228.rpgleinc'

dcl-ds theTable extname('T619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T619 LIMIT 1;

theCharVar = 'Hello from P2157';
dsply theCharVar;
callp localProc();
P1977();
P1989();
P1228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2157 in the procedure';
end-proc;