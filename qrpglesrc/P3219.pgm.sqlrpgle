**free

ctl-opt dftactgrp(*no);

dcl-pi P3219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2101.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds T313 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T313 FROM T313 LIMIT 1;

theCharVar = 'Hello from P3219';
dsply theCharVar;
callp localProc();
P2101();
P1106();
P131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3219 in the procedure';
end-proc;