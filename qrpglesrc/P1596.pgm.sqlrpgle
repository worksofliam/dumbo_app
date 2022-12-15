**free

ctl-opt dftactgrp(*no);

dcl-pi P1596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'

dcl-ds theTable extname('T490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T490 LIMIT 1;

theCharVar = 'Hello from P1596';
dsply theCharVar;
callp localProc();
P252();
P935();
P826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1596 in the procedure';
end-proc;