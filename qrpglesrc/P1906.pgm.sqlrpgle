**free

ctl-opt dftactgrp(*no);

dcl-pi P1906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'

dcl-ds T259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T259 FROM T259 LIMIT 1;

theCharVar = 'Hello from P1906';
dsply theCharVar;
callp localProc();
P305();
P680();
P1069();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1906 in the procedure';
end-proc;