**free

ctl-opt dftactgrp(*no);

dcl-pi P2382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P2382';
dsply theCharVar;
callp localProc();
P83();
P531();
P1324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2382 in the procedure';
end-proc;