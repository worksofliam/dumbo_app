**free

ctl-opt dftactgrp(*no);

dcl-pi P667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds theTable extname('T637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T637 LIMIT 1;

theCharVar = 'Hello from P667';
dsply theCharVar;
callp localProc();
P314();
P240();
P506();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P667 in the procedure';
end-proc;