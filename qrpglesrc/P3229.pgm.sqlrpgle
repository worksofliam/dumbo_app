**free

ctl-opt dftactgrp(*no);

dcl-pi P3229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P2890.rpgleinc'

dcl-ds theTable extname('T511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T511 LIMIT 1;

theCharVar = 'Hello from P3229';
dsply theCharVar;
callp localProc();
P441();
P811();
P2890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3229 in the procedure';
end-proc;