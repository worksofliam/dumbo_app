**free

ctl-opt dftactgrp(*no);

dcl-pi P1872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P1320.rpgleinc'

dcl-ds T636 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T636 FROM T636 LIMIT 1;

theCharVar = 'Hello from P1872';
dsply theCharVar;
callp localProc();
P636();
P712();
P1320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1872 in the procedure';
end-proc;