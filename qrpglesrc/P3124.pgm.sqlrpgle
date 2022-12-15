**free

ctl-opt dftactgrp(*no);

dcl-pi P3124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1225.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'

dcl-ds T701 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T701 FROM T701 LIMIT 1;

theCharVar = 'Hello from P3124';
dsply theCharVar;
callp localProc();
P1225();
P129();
P1358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3124 in the procedure';
end-proc;