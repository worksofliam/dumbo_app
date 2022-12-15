**free

ctl-opt dftactgrp(*no);

dcl-pi P242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P242';
dsply theCharVar;
callp localProc();
P143();
P209();
P185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P242 in the procedure';
end-proc;