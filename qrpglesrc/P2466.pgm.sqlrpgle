**free

ctl-opt dftactgrp(*no);

dcl-pi P2466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'

dcl-ds theTable extname('T796') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T796 LIMIT 1;

theCharVar = 'Hello from P2466';
dsply theCharVar;
callp localProc();
P891();
P1981();
P2113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2466 in the procedure';
end-proc;