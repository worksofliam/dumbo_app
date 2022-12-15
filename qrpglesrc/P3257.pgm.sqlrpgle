**free

ctl-opt dftactgrp(*no);

dcl-pi P3257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P3257';
dsply theCharVar;
callp localProc();
P1677();
P734();
P1893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3257 in the procedure';
end-proc;