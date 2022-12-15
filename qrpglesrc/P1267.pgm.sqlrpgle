**free

ctl-opt dftactgrp(*no);

dcl-pi P1267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T664 FROM T664 LIMIT 1;

theCharVar = 'Hello from P1267';
dsply theCharVar;
callp localProc();
P1157();
P1027();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1267 in the procedure';
end-proc;