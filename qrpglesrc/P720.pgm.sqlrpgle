**free

ctl-opt dftactgrp(*no);

dcl-pi P720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds theTable extname('T591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T591 LIMIT 1;

theCharVar = 'Hello from P720';
dsply theCharVar;
callp localProc();
P113();
P5();
P81();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P720 in the procedure';
end-proc;