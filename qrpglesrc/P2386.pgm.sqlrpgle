**free

ctl-opt dftactgrp(*no);

dcl-pi P2386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P2386';
dsply theCharVar;
callp localProc();
P275();
P978();
P341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2386 in the procedure';
end-proc;