**free

ctl-opt dftactgrp(*no);

dcl-pi P1739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P1739';
dsply theCharVar;
callp localProc();
P362();
P1596();
P524();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1739 in the procedure';
end-proc;