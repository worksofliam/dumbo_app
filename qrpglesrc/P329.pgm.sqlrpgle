**free

ctl-opt dftactgrp(*no);

dcl-pi P329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P329';
dsply theCharVar;
callp localProc();
P26();
P12();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P329 in the procedure';
end-proc;