**free

ctl-opt dftactgrp(*no);

dcl-pi P1447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds T744 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T744 FROM T744 LIMIT 1;

theCharVar = 'Hello from P1447';
dsply theCharVar;
callp localProc();
P195();
P212();
P339();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1447 in the procedure';
end-proc;