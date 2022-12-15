**free

ctl-opt dftactgrp(*no);

dcl-pi P2909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'

dcl-ds theTable extname('T927') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T927 LIMIT 1;

theCharVar = 'Hello from P2909';
dsply theCharVar;
callp localProc();
P144();
P476();
P2100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2909 in the procedure';
end-proc;