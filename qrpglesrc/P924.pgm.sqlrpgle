**free

ctl-opt dftactgrp(*no);

dcl-pi P924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P886.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P924';
dsply theCharVar;
callp localProc();
P910();
P402();
P886();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P924 in the procedure';
end-proc;