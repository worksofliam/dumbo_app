**free

ctl-opt dftactgrp(*no);

dcl-pi P877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'

dcl-ds theTable extname('T1805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1805 LIMIT 1;

theCharVar = 'Hello from P877';
dsply theCharVar;
callp localProc();
P604();
P789();
P528();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P877 in the procedure';
end-proc;