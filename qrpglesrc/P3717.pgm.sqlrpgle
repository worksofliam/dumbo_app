**free

ctl-opt dftactgrp(*no);

dcl-pi P3717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3654.rpgleinc'
/copy 'qrpgleref/P3712.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'

dcl-ds theTable extname('T808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T808 LIMIT 1;

theCharVar = 'Hello from P3717';
dsply theCharVar;
callp localProc();
P3654();
P3712();
P1392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3717 in the procedure';
end-proc;