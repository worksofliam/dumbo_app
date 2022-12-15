**free

ctl-opt dftactgrp(*no);

dcl-pi P3335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P792.rpgleinc'

dcl-ds T479 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T479 FROM T479 LIMIT 1;

theCharVar = 'Hello from P3335';
dsply theCharVar;
callp localProc();
P1231();
P2236();
P792();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3335 in the procedure';
end-proc;