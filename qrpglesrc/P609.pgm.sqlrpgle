**free

ctl-opt dftactgrp(*no);

dcl-pi P609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'

dcl-ds theTable extname('T352') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T352 LIMIT 1;

theCharVar = 'Hello from P609';
dsply theCharVar;
callp localProc();
P393();
P196();
P583();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P609 in the procedure';
end-proc;