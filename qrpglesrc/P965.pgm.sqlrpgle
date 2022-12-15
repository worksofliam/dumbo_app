**free

ctl-opt dftactgrp(*no);

dcl-pi P965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T459 LIMIT 1;

theCharVar = 'Hello from P965';
dsply theCharVar;
callp localProc();
P622();
P501();
P573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P965 in the procedure';
end-proc;