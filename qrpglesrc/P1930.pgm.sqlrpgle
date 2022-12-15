**free

ctl-opt dftactgrp(*no);

dcl-pi P1930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1309.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P1694.rpgleinc'

dcl-ds T964 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T964 FROM T964 LIMIT 1;

theCharVar = 'Hello from P1930';
dsply theCharVar;
callp localProc();
P1309();
P268();
P1694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1930 in the procedure';
end-proc;