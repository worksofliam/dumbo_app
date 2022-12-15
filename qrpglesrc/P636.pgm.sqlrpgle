**free

ctl-opt dftactgrp(*no);

dcl-pi P636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T931') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T931 LIMIT 1;

theCharVar = 'Hello from P636';
dsply theCharVar;
callp localProc();
P212();
P623();
P241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P636 in the procedure';
end-proc;