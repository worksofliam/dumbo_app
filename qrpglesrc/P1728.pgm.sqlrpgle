**free

ctl-opt dftactgrp(*no);

dcl-pi P1728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T905') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T905 LIMIT 1;

theCharVar = 'Hello from P1728';
dsply theCharVar;
callp localProc();
P1188();
P810();
P967();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1728 in the procedure';
end-proc;