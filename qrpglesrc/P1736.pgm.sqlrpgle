**free

ctl-opt dftactgrp(*no);

dcl-pi P1736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T169 LIMIT 1;

theCharVar = 'Hello from P1736';
dsply theCharVar;
callp localProc();
P741();
P888();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1736 in the procedure';
end-proc;