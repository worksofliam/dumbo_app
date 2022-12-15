**free

ctl-opt dftactgrp(*no);

dcl-pi P3142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'

dcl-ds theTable extname('T329') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T329 LIMIT 1;

theCharVar = 'Hello from P3142';
dsply theCharVar;
callp localProc();
P2199();
P1981();
P767();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3142 in the procedure';
end-proc;