**free

ctl-opt dftactgrp(*no);

dcl-pi P556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P556';
dsply theCharVar;
callp localProc();
P200();
P176();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P556 in the procedure';
end-proc;