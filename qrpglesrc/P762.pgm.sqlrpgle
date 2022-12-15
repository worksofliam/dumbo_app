**free

ctl-opt dftactgrp(*no);

dcl-pi P762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T639 LIMIT 1;

theCharVar = 'Hello from P762';
dsply theCharVar;
callp localProc();
P162();
P134();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P762 in the procedure';
end-proc;