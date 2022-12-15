**free

ctl-opt dftactgrp(*no);

dcl-pi P368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T749 LIMIT 1;

theCharVar = 'Hello from P368';
dsply theCharVar;
callp localProc();
P32();
P0();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P368 in the procedure';
end-proc;