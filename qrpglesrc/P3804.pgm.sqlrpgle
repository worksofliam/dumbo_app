**free

ctl-opt dftactgrp(*no);

dcl-pi P3804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P3753.rpgleinc'

dcl-ds T574 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T574 FROM T574 LIMIT 1;

theCharVar = 'Hello from P3804';
dsply theCharVar;
callp localProc();
P571();
P1145();
P3753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3804 in the procedure';
end-proc;