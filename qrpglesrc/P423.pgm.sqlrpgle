**free

ctl-opt dftactgrp(*no);

dcl-pi P423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P423';
dsply theCharVar;
callp localProc();
P333();
P322();
P414();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P423 in the procedure';
end-proc;