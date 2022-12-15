**free

ctl-opt dftactgrp(*no);

dcl-pi P3593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P3174.rpgleinc'
/copy 'qrpgleref/P2076.rpgleinc'

dcl-ds theTable extname('T176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T176 LIMIT 1;

theCharVar = 'Hello from P3593';
dsply theCharVar;
callp localProc();
P1286();
P3174();
P2076();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3593 in the procedure';
end-proc;