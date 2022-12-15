**free

ctl-opt dftactgrp(*no);

dcl-pi P277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T305') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T305 LIMIT 1;

theCharVar = 'Hello from P277';
dsply theCharVar;
callp localProc();
P44();
P70();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P277 in the procedure';
end-proc;