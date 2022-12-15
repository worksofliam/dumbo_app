**free

ctl-opt dftactgrp(*no);

dcl-pi P5373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P3058.rpgleinc'

dcl-ds T297 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T297 FROM T297 LIMIT 1;

theCharVar = 'Hello from P5373';
dsply theCharVar;
callp localProc();
P708();
P119();
P3058();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5373 in the procedure';
end-proc;