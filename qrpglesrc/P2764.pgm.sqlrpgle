**free

ctl-opt dftactgrp(*no);

dcl-pi P2764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2747.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'

dcl-ds T308 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T308 FROM T308 LIMIT 1;

theCharVar = 'Hello from P2764';
dsply theCharVar;
callp localProc();
P2747();
P1083();
P1046();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2764 in the procedure';
end-proc;