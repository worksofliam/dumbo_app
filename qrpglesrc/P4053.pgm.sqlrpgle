**free

ctl-opt dftactgrp(*no);

dcl-pi P4053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1817.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P3826.rpgleinc'

dcl-ds T530 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T530 FROM T530 LIMIT 1;

theCharVar = 'Hello from P4053';
dsply theCharVar;
callp localProc();
P1817();
P276();
P3826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4053 in the procedure';
end-proc;