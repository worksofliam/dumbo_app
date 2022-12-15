**free

ctl-opt dftactgrp(*no);

dcl-pi P5346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4780.rpgleinc'
/copy 'qrpgleref/P5080.rpgleinc'
/copy 'qrpgleref/P3529.rpgleinc'

dcl-ds T313 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T313 FROM T313 LIMIT 1;

theCharVar = 'Hello from P5346';
dsply theCharVar;
callp localProc();
P4780();
P5080();
P3529();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5346 in the procedure';
end-proc;