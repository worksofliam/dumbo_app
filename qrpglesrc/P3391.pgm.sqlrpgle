**free

ctl-opt dftactgrp(*no);

dcl-pi P3391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3019.rpgleinc'
/copy 'qrpgleref/P956.rpgleinc'
/copy 'qrpgleref/P1790.rpgleinc'

dcl-ds theTable extname('T591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T591 LIMIT 1;

theCharVar = 'Hello from P3391';
dsply theCharVar;
callp localProc();
P3019();
P956();
P1790();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3391 in the procedure';
end-proc;