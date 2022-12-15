**free

ctl-opt dftactgrp(*no);

dcl-pi P314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T1211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1211 LIMIT 1;

theCharVar = 'Hello from P314';
dsply theCharVar;
callp localProc();
P211();
P26();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P314 in the procedure';
end-proc;