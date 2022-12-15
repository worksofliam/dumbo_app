**free

ctl-opt dftactgrp(*no);

dcl-pi P3428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'

dcl-ds theTable extname('T118') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T118 LIMIT 1;

theCharVar = 'Hello from P3428';
dsply theCharVar;
callp localProc();
P680();
P48();
P382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3428 in the procedure';
end-proc;