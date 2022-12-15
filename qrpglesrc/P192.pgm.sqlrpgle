**free

ctl-opt dftactgrp(*no);

dcl-pi P192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P192';
dsply theCharVar;
callp localProc();
P189();
P101();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P192 in the procedure';
end-proc;