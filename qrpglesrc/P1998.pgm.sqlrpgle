**free

ctl-opt dftactgrp(*no);

dcl-pi P1998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T1502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1502 LIMIT 1;

theCharVar = 'Hello from P1998';
dsply theCharVar;
callp localProc();
P1590();
P1631();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1998 in the procedure';
end-proc;