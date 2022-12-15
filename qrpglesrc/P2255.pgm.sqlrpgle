**free

ctl-opt dftactgrp(*no);

dcl-pi P2255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'

dcl-ds T633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T633 FROM T633 LIMIT 1;

theCharVar = 'Hello from P2255';
dsply theCharVar;
callp localProc();
P477();
P1229();
P1847();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2255 in the procedure';
end-proc;