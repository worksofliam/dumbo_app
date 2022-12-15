**free

ctl-opt dftactgrp(*no);

dcl-pi P2707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'

dcl-ds theTable extname('T971') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T971 LIMIT 1;

theCharVar = 'Hello from P2707';
dsply theCharVar;
callp localProc();
P1865();
P345();
P517();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2707 in the procedure';
end-proc;