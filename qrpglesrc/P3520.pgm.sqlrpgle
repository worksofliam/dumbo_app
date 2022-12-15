**free

ctl-opt dftactgrp(*no);

dcl-pi P3520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2692.rpgleinc'
/copy 'qrpgleref/P3138.rpgleinc'
/copy 'qrpgleref/P3417.rpgleinc'

dcl-ds T462 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T462 FROM T462 LIMIT 1;

theCharVar = 'Hello from P3520';
dsply theCharVar;
callp localProc();
P2692();
P3138();
P3417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3520 in the procedure';
end-proc;