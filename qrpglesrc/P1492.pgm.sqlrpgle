**free

ctl-opt dftactgrp(*no);

dcl-pi P1492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'

dcl-ds T664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T664 FROM T664 LIMIT 1;

theCharVar = 'Hello from P1492';
dsply theCharVar;
callp localProc();
P308();
P1435();
P1095();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1492 in the procedure';
end-proc;