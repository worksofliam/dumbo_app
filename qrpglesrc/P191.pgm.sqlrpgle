**free

ctl-opt dftactgrp(*no);

dcl-pi P191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P191';
dsply theCharVar;
callp localProc();
P77();
P50();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P191 in the procedure';
end-proc;