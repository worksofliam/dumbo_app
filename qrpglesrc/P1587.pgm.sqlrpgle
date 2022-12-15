**free

ctl-opt dftactgrp(*no);

dcl-pi P1587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P1587';
dsply theCharVar;
callp localProc();
P578();
P1365();
P538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1587 in the procedure';
end-proc;