**free

ctl-opt dftactgrp(*no);

dcl-pi P5435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2684.rpgleinc'
/copy 'qrpgleref/P4995.rpgleinc'
/copy 'qrpgleref/P4837.rpgleinc'

dcl-ds T588 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T588 FROM T588 LIMIT 1;

theCharVar = 'Hello from P5435';
dsply theCharVar;
callp localProc();
P2684();
P4995();
P4837();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5435 in the procedure';
end-proc;