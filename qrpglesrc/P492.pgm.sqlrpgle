**free

ctl-opt dftactgrp(*no);

dcl-pi P492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P492';
dsply theCharVar;
callp localProc();
P244();
P91();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P492 in the procedure';
end-proc;