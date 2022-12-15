**free

ctl-opt dftactgrp(*no);

dcl-pi P2849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2767.rpgleinc'
/copy 'qrpgleref/P1880.rpgleinc'
/copy 'qrpgleref/P1821.rpgleinc'

dcl-ds theTable extname('T1327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1327 LIMIT 1;

theCharVar = 'Hello from P2849';
dsply theCharVar;
callp localProc();
P2767();
P1880();
P1821();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2849 in the procedure';
end-proc;