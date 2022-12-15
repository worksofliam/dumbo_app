**free

ctl-opt dftactgrp(*no);

dcl-pi P3812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P3749.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T276 FROM T276 LIMIT 1;

theCharVar = 'Hello from P3812';
dsply theCharVar;
callp localProc();
P1020();
P3749();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3812 in the procedure';
end-proc;