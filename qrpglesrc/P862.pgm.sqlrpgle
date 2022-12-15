**free

ctl-opt dftactgrp(*no);

dcl-pi P862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P862';
dsply theCharVar;
callp localProc();
P249();
P567();
P826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P862 in the procedure';
end-proc;