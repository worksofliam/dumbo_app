**free

ctl-opt dftactgrp(*no);

dcl-pi P1924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1924';
dsply theCharVar;
callp localProc();
P46();
P332();
P582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1924 in the procedure';
end-proc;