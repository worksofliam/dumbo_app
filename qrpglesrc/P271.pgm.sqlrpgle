**free

ctl-opt dftactgrp(*no);

dcl-pi P271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'

dcl-ds T639 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T639 FROM T639 LIMIT 1;

theCharVar = 'Hello from P271';
dsply theCharVar;
callp localProc();
P208();
P16();
P170();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P271 in the procedure';
end-proc;