**free

ctl-opt dftactgrp(*no);

dcl-pi P1909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P1687.rpgleinc'

dcl-ds T498 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T498 FROM T498 LIMIT 1;

theCharVar = 'Hello from P1909';
dsply theCharVar;
callp localProc();
P1035();
P166();
P1687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1909 in the procedure';
end-proc;