**free

ctl-opt dftactgrp(*no);

dcl-pi P5182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3177.rpgleinc'
/copy 'qrpgleref/P3244.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'

dcl-ds T147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T147 FROM T147 LIMIT 1;

theCharVar = 'Hello from P5182';
dsply theCharVar;
callp localProc();
P3177();
P3244();
P1469();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5182 in the procedure';
end-proc;