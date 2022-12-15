**free

ctl-opt dftactgrp(*no);

dcl-pi P1368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P1344.rpgleinc'

dcl-ds theTable extname('T1090') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1090 LIMIT 1;

theCharVar = 'Hello from P1368';
dsply theCharVar;
callp localProc();
P587();
P309();
P1344();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1368 in the procedure';
end-proc;