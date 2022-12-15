**free

ctl-opt dftactgrp(*no);

dcl-pi P3670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2612.rpgleinc'
/copy 'qrpgleref/P2309.rpgleinc'
/copy 'qrpgleref/P1188.rpgleinc'

dcl-ds theTable extname('T395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T395 LIMIT 1;

theCharVar = 'Hello from P3670';
dsply theCharVar;
callp localProc();
P2612();
P2309();
P1188();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3670 in the procedure';
end-proc;