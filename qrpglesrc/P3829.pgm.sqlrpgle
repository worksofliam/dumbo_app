**free

ctl-opt dftactgrp(*no);

dcl-pi P3829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3798.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'

dcl-ds T496 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T496 FROM T496 LIMIT 1;

theCharVar = 'Hello from P3829';
dsply theCharVar;
callp localProc();
P3798();
P1365();
P2431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3829 in the procedure';
end-proc;