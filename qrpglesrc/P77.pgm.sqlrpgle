**free

ctl-opt dftactgrp(*no);

dcl-pi P77;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P77';
dsply theCharVar;
callp localProc();
P14();
P70();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P77 in the procedure';
end-proc;