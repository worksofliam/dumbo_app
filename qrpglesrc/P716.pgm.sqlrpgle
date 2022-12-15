**free

ctl-opt dftactgrp(*no);

dcl-pi P716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T123 LIMIT 1;

theCharVar = 'Hello from P716';
dsply theCharVar;
callp localProc();
P185();
P635();
P358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P716 in the procedure';
end-proc;