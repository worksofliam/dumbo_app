**free

ctl-opt dftactgrp(*no);

dcl-pi P1565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds T399 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T399 FROM T399 LIMIT 1;

theCharVar = 'Hello from P1565';
dsply theCharVar;
callp localProc();
P781();
P1019();
P226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1565 in the procedure';
end-proc;