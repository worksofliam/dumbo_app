**free

ctl-opt dftactgrp(*no);

dcl-pi P1334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds T206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T206 FROM T206 LIMIT 1;

theCharVar = 'Hello from P1334';
dsply theCharVar;
callp localProc();
P987();
P395();
P305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1334 in the procedure';
end-proc;