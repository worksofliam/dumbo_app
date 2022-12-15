**free

ctl-opt dftactgrp(*no);

dcl-pi P3215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3062.rpgleinc'
/copy 'qrpgleref/P1779.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'

dcl-ds T665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T665 FROM T665 LIMIT 1;

theCharVar = 'Hello from P3215';
dsply theCharVar;
callp localProc();
P3062();
P1779();
P1570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3215 in the procedure';
end-proc;