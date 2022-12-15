**free

ctl-opt dftactgrp(*no);

dcl-pi P1445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T782 LIMIT 1;

theCharVar = 'Hello from P1445';
dsply theCharVar;
callp localProc();
P183();
P174();
P369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1445 in the procedure';
end-proc;