**free

ctl-opt dftactgrp(*no);

dcl-pi P171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P171';
dsply theCharVar;
callp localProc();
P167();
P19();
P150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P171 in the procedure';
end-proc;