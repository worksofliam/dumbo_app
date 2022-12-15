**free

ctl-opt dftactgrp(*no);

dcl-pi P5420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3236.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P1328.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P5420';
dsply theCharVar;
callp localProc();
P3236();
P1472();
P1328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5420 in the procedure';
end-proc;