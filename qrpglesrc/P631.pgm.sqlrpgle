**free

ctl-opt dftactgrp(*no);

dcl-pi P631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P631';
dsply theCharVar;
callp localProc();
P439();
P32();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P631 in the procedure';
end-proc;