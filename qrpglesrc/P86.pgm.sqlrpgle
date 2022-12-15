**free

ctl-opt dftactgrp(*no);

dcl-pi P86;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P86';
dsply theCharVar;
callp localProc();
P14();
P39();
P71();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P86 in the procedure';
end-proc;