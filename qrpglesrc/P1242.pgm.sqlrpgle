**free

ctl-opt dftactgrp(*no);

dcl-pi P1242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P1242';
dsply theCharVar;
callp localProc();
P122();
P80();
P75();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1242 in the procedure';
end-proc;