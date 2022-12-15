**free

ctl-opt dftactgrp(*no);

dcl-pi P330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T444 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T444 FROM T444 LIMIT 1;

theCharVar = 'Hello from P330';
dsply theCharVar;
callp localProc();
P102();
P152();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P330 in the procedure';
end-proc;