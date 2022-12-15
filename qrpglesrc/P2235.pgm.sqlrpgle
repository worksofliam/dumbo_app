**free

ctl-opt dftactgrp(*no);

dcl-pi P2235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1695.rpgleinc'
/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'

dcl-ds theTable extname('T982') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T982 LIMIT 1;

theCharVar = 'Hello from P2235';
dsply theCharVar;
callp localProc();
P1695();
P1985();
P1052();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2235 in the procedure';
end-proc;