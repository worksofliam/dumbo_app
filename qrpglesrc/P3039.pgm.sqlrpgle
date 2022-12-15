**free

ctl-opt dftactgrp(*no);

dcl-pi P3039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P2055.rpgleinc'

dcl-ds T423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T423 FROM T423 LIMIT 1;

theCharVar = 'Hello from P3039';
dsply theCharVar;
callp localProc();
P1636();
P1182();
P2055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3039 in the procedure';
end-proc;