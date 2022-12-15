**free

ctl-opt dftactgrp(*no);

dcl-pi P3368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2346.rpgleinc'
/copy 'qrpgleref/P2774.rpgleinc'
/copy 'qrpgleref/P3044.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P3368';
dsply theCharVar;
callp localProc();
P2346();
P2774();
P3044();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3368 in the procedure';
end-proc;