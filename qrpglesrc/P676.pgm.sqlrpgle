**free

ctl-opt dftactgrp(*no);

dcl-pi P676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P676';
dsply theCharVar;
callp localProc();
P124();
P126();
P223();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P676 in the procedure';
end-proc;