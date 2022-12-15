**free

ctl-opt dftactgrp(*no);

dcl-pi P3396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P2231.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P3396';
dsply theCharVar;
callp localProc();
P623();
P781();
P2231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3396 in the procedure';
end-proc;