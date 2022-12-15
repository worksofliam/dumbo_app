**free

ctl-opt dftactgrp(*no);

dcl-pi P386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P386';
dsply theCharVar;
callp localProc();
P10();
P294();
P88();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P386 in the procedure';
end-proc;