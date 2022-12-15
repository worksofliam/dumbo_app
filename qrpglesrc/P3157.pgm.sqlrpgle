**free

ctl-opt dftactgrp(*no);

dcl-pi P3157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P1969.rpgleinc'

dcl-ds T564 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T564 FROM T564 LIMIT 1;

theCharVar = 'Hello from P3157';
dsply theCharVar;
callp localProc();
P1563();
P255();
P1969();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3157 in the procedure';
end-proc;