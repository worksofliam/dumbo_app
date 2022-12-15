**free

ctl-opt dftactgrp(*no);

dcl-pi P17;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T113 LIMIT 1;

theCharVar = 'Hello from P17';
dsply theCharVar;
callp localProc();
P0();
P6();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P17 in the procedure';
end-proc;