**free

ctl-opt dftactgrp(*no);

dcl-pi P3532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3122.rpgleinc'
/copy 'qrpgleref/P2552.rpgleinc'
/copy 'qrpgleref/P2439.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P3532';
dsply theCharVar;
callp localProc();
P3122();
P2552();
P2439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3532 in the procedure';
end-proc;