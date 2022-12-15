**free

ctl-opt dftactgrp(*no);

dcl-pi P1279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P911.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1279';
dsply theCharVar;
callp localProc();
P911();
P1194();
P872();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1279 in the procedure';
end-proc;