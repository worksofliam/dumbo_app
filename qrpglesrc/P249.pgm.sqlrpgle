**free

ctl-opt dftactgrp(*no);

dcl-pi P249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P249';
dsply theCharVar;
callp localProc();
P72();
P27();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P249 in the procedure';
end-proc;