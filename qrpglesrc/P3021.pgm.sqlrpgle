**free

ctl-opt dftactgrp(*no);

dcl-pi P3021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1867.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P2510.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P3021';
dsply theCharVar;
callp localProc();
P1867();
P991();
P2510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3021 in the procedure';
end-proc;