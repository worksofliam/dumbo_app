**free

ctl-opt dftactgrp(*no);

dcl-pi P49;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P49';
dsply theCharVar;
callp localProc();
P28();
P30();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P49 in the procedure';
end-proc;