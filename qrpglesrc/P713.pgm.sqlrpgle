**free

ctl-opt dftactgrp(*no);

dcl-pi P713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P713';
dsply theCharVar;
callp localProc();
P487();
P302();
P118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P713 in the procedure';
end-proc;