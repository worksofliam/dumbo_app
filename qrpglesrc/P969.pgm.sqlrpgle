**free

ctl-opt dftactgrp(*no);

dcl-pi P969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P620.rpgleinc'

dcl-ds theTable extname('T360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T360 LIMIT 1;

theCharVar = 'Hello from P969';
dsply theCharVar;
callp localProc();
P101();
P94();
P620();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P969 in the procedure';
end-proc;